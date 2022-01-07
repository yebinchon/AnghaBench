
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* fields; } ;
typedef TYPE_2__ type_desc ;
struct TYPE_8__ {int v_fid; int type; char* v_string; int v_string_len; int v_int; int v_long; int v_double; } ;
struct TYPE_6__ {int type; } ;


 int MAX_EVENT_SIZE ;
 int MAX_FIELDS ;
 int assert (int ) ;
 TYPE_5__* field_changes ;
 int field_changes_n ;
 int get_field_id_len (TYPE_2__*,char*,int) ;
 int sscanf (char*,char*,int*,int*) ;
 int strlen (char*) ;



 int t_raw ;
 int t_string ;
 TYPE_2__* types ;

int php_get_fields (int type_id, char *l) {
  type_desc *t = &types[type_id];
  int n;
  int len = strlen (l);
  int add;
  field_changes_n = -1;
  if (sscanf (l, "a:%d%n", &n, &add) != 1 || l[add] != ':' || l[add + 1] != '{' || l[len - 1] != '}' || n < 0 || n > MAX_FIELDS || len >= MAX_EVENT_SIZE) {
    return -1;
  }
  int i, j = add + 2;

  for (i = 0; i < n; i++) {
    int clen;
    if (sscanf (l + j, "s:%d%n", &clen, &add) != 1 || l[j + add] != ':' || l[j + add + 1] != '"') {
      return -1;
    }
    j += add + 2;

    if (j + 3 + clen >= len) {
      return -1;
    }

    int id = get_field_id_len (t, l + j, clen);

    if (id < 0) {
      return -1;
    }

    field_changes[i].v_fid = id;
    int f_type = field_changes[i].type = t->fields[id].type;


    if (f_type == t_raw) {
      return -1;
    }

    j += clen;

    if (l[j++] != '"') {
      return -1;
    }
    if (l[j++] != ';') {
      return -1;
    }

    if (l[j] != 's' && l[j] != 'i' && l[j] != 'd') {
      return -1;
    }

    int is_str;
    if (l[j] == 's') {
      is_str = 1;
      j++;
      if (sscanf (l + j, ":%d%n", &clen, &add) != 1 || l[j + add] != ':') {
        return -1;
      }
      j += add;

      if (j + clen + 2 >= len) {
        return -1;
      }
    } else {
      is_str = 0;
      j++;
    }

    if (l[j++] != ':') {
      return -1;
    }

    if (is_str) {
      if (l[j++] != '"') {
        return -1;
      }
    }

    int field_end = 0;
    if (f_type == t_string) {
      if (!is_str) {
        clen = 0;
        if (j + clen + 1 < len && l[j + clen] != ';') {
          clen++;
        }
      }

      field_changes[i].v_string = l + j;
      field_changes[i].v_string_len = clen;

      field_end = clen;
    } else {
      switch (f_type) {
        case 129:
          if (sscanf (l + j, "%d%n", &field_changes[i].v_int, &field_end) != 1) {
            return -1;
          }
          break;
        case 128:
          if (sscanf (l + j, "%lld%n", &field_changes[i].v_long, &field_end) != 1) {
            return -1;
          }
          break;
        case 130:
          if (sscanf (l + j, "%lf%n", &field_changes[i].v_double, &field_end) != 1) {
            return -1;
          }
          break;
        default:
          assert (0);
      }
    }

    j += field_end;

    if (is_str) {
      if (field_end != clen) {
        return -1;
      }

      if (l[j++] != '"') {
        return -1;
      }
    }

    if (l[j++] != ';') {
      return -1;
    }
  }

  if (j != len - 1) {
    return -1;
  }
  return field_changes_n = n;
}
