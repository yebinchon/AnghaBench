
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int type; } ;
typedef TYPE_1__ field_desc ;
struct TYPE_8__ {int type_id; int* id; int* tp; char** tval; size_t tn; int size; } ;
typedef TYPE_2__ event_dump ;
typedef int event ;
struct TYPE_9__ {TYPE_1__* fields; } ;


 char* GET_FIELD (int *,TYPE_1__*) ;
 int MAX_FIELDS ;
 int assert (int) ;
 int get_field_id_len (TYPE_3__*,char*,int) ;
 scalar_t__ has_field (int *,int) ;
 int sscanf (char*,char*,...) ;
 int strlen (char*) ;



 int t_raw ;

 char* tmp_mem_strdup (char*) ;
 TYPE_3__* types ;

int event_dump_from_str (event_dump *d, char *buff, int type_id, event *e) {
  assert (d->type_id == type_id);

  static const char delim = 1;

  char *desc = buff;

  int valn[MAX_FIELDS], fn = 0;
  char *val[MAX_FIELDS];

  int i = 0, j, k;
  int dn = strlen (desc);
  desc[dn + 1] = 0;
  while (desc[i]) {
    if (fn == MAX_FIELDS) {
      return -1;
    }

    j = i;
    while (desc[j] != ':' && desc[j]) {
      j++;
    }
    if (desc[j] != ':') {
      return -1;
    }

    desc[j] = 0;

    int fid = get_field_id_len (&types[type_id], desc + i, j - i);

    if (fid < 0) {
      return -1;
    }

    d->id[fn] = fid;

    k = ++j;
    while (desc[k] != delim && desc[k]) {
      k++;
    }
    desc[k] = 0;

    d->tp[fn] = types[type_id].fields[fid].type;


    if (d->tp[fn] == t_raw) {
      return -1;
    }

    valn[fn] = k - j;
    val[fn++] = desc + j;


    i = k + 1;
  }

  field_desc *f = types[type_id].fields;


  for (i = 0; i < fn; i++) {
    char *dest;
    int flag = 0;
    if (e != ((void*)0) && has_field (e, d->id[i]) && d->tp[i] != 128) {
      dest = GET_FIELD (e, &f[d->id[i]]);
    } else {
      dest = d->tval[d->tn];
      flag = 1;
    }
    int nn, add = 0;
    switch (d->tp[i]) {
    case 130:
      if (sscanf (val[i], "%d%n", (int *)dest, &nn) != 1 || nn != valn[i]) {
        return -1;
      }
      add = 4;
      break;
    case 129:
      if (sscanf (val[i], "%lld%n", (long long *)dest, &nn) != 1 || nn != valn[i]) {
        return -1;
      }
      add = 8;
      break;
    case 131:
      if (sscanf (val[i], "%lf%n", (double *)dest, &nn) != 1 || nn != valn[i]) {
        return -1;
      }
      add = 8;
      break;
    case 128:
      *(char **)dest = tmp_mem_strdup (val[i]);
      add = valn[i] + 1;
      break;
    default:
      assert (0);
    }
    if (flag) {
      d->tp[d->tn] = d->tp[i];
      d->id[d->tn] = d->id[i];
      d->size += add;
      d->tn++;
    }
  }



  return 0;
}
