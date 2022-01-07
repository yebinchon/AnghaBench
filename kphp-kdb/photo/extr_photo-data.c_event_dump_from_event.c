
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {int type; } ;
typedef TYPE_1__ field_desc ;
struct TYPE_22__ {int type_id; int tn; char** tval; int* id; int* tp; int size; } ;
typedef TYPE_2__ event_dump ;
struct TYPE_23__ {int sn; } ;
typedef TYPE_3__ event ;
struct TYPE_24__ {TYPE_1__* fields; } ;


 double* GET_DOUBLE (TYPE_3__*,TYPE_1__*) ;
 char* GET_FIELD (TYPE_3__*,TYPE_1__*) ;
 int* GET_INT (TYPE_3__*,TYPE_1__*) ;
 long long* GET_LONG (TYPE_3__*,TYPE_1__*) ;
 char* GET_RAW (TYPE_3__*,TYPE_1__*) ;
 int GET_STRING (TYPE_3__*,TYPE_1__*) ;
 int RAW_RLEN (char*) ;
 int assert (int) ;
 scalar_t__ has_field (TYPE_3__*,int) ;
 int strlen (char*) ;





 char* tmp_mem_dup (char*,int) ;
 char* tmp_mem_strdup (int ) ;
 TYPE_4__* types ;

int event_dump_from_event (event_dump *d, event *e, int type_id, event *v) {
  int i, j;

  if (e == ((void*)0)) {
    return 0;
  }

  assert (d->type_id == type_id);





  field_desc *f = types[type_id].fields;

  int tn = d->tn;

  for (i = 0; i < e->sn; i++) {
    if (has_field (e, i)) {
      char *dest;
      int flag = 0, add = 0;
      if (v != ((void*)0) && has_field (v, i) && f[i].type != 128 && f[i].type != 129) {
        dest = GET_FIELD (v, &f[i]);
      } else {
        dest = d->tval[d->tn];
        flag = 1;
      }

      j = tn;
      switch (f[i].type) {
      case 131:
        *(int *)dest = *GET_INT (e, &f[i]);
        add = sizeof (int);
        break;
      case 130:
        *(long long *)dest = *GET_LONG (e, &f[i]);
        add = sizeof (long long);
        break;
      case 132:
        *(double *)dest = *GET_DOUBLE (e, &f[i]);
        add = sizeof (double);
        break;
      case 128:

        for (j = 0; j < tn; j++) {
          if (d->id[j] == i) {
            break;
          }
        }

        if (j == tn) {
          *(char **)d->tval[d->tn] = tmp_mem_strdup (GET_STRING (e, &f[i]));
          add = strlen (*(char **)d->tval[d->tn]) + 1;
        }
        break;
      case 129:
        for (j = 0; j < tn; j++) {
          if (d->id[j] == i) {
            break;
          }
        }

        if (j == tn) {
          char *x = GET_RAW (e, &f[i]);
          add = RAW_RLEN (x);
          *(char **)d->tval[d->tn] = tmp_mem_dup (x, add);
        }
        break;
      }
      if (flag && j == tn) {
        d->id[d->tn] = i;
        d->tp[d->tn] = f[i].type;
        d->size += add;
        d->tn++;
      }
    }
  }
  return 0;
}
