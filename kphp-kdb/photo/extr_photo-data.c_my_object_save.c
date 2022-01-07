
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* name; int type; } ;
typedef TYPE_1__ field_desc ;
typedef int event ;
struct TYPE_11__ {int dyn; int * obj; } ;
typedef TYPE_2__ actual_object ;
struct TYPE_12__ {TYPE_1__* fields; } ;


 scalar_t__ EMPTY__METAFILE ;
 int * GET_DOUBLE (int *,TYPE_1__*) ;
 int* GET_INT (int *,TYPE_1__*) ;
 int * GET_LONG (int *,TYPE_1__*) ;
 int GET_RAW (int *,TYPE_1__*) ;
 char* GET_STRING (int *,TYPE_1__*) ;
 int PHOTO_TYPE ;
 int RAW_LEN (int ) ;
 int assert (int) ;
 int event_free (int *) ;
 int * event_update_event (int *,int ,int) ;
 int fprintf (int ,char*,...) ;
 int fputc (char,int ) ;
 int get_event_size (int *) ;
 int has_field (int *,int) ;
 int memcpy (char*,int *,int) ;
 int stderr ;





 int total_photos ;
 TYPE_3__* types ;

inline int my_object_save (actual_object *o, char *buf, int buf_size, int type_id) {
  if (type_id == PHOTO_TYPE) {
    total_photos++;
  }

  event *old = o->obj == (event *)EMPTY__METAFILE ? ((void*)0) : o->obj, *new = old;
  event *e = event_update_event (new, o->dyn, type_id);

  if (0) {
    int k;
    for (k = 0; k < 63; k++) {
      if (!has_field (e, k)) {
        continue;
      }

      field_desc *f = &types[type_id].fields[k];
      fprintf (stderr, "%15s: ", f->name);

      switch (f->type) {
        case 131:
          fprintf (stderr, "%d", *GET_INT(e, f));
          break;
        case 130:
          fprintf (stderr, "%lld", *GET_LONG(e, f));
          break;
        case 132:
          fprintf (stderr, "%.6lf", *GET_DOUBLE(e, f));
          break;
        case 128: {
          char *p = GET_STRING(e, f);
          while (*p) {
            switch (*p) {
              case '\t':
              case '\n':
              case '\\':
                fputc ('\\', stderr);
              default:
                fputc (*p++, stderr);
            }
          }
          break;
        }
        case 129:
          fprintf (stderr, "%d", RAW_LEN (GET_RAW (e, f)));
          break;
        default:
          assert (0);
      }
      fprintf (stderr, "\n");
    }
    fprintf (stderr, "\n");
  }

  int len = get_event_size (e);
  assert (len <= buf_size);
  memcpy (buf, e, len);

  if (e != new) {
    event_free (e);
  }
  if (new != old) {
    event_free (new);
  }
  return len;
}
