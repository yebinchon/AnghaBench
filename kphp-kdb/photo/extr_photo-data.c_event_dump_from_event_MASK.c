#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int type; } ;
typedef  TYPE_1__ field_desc ;
struct TYPE_22__ {int type_id; int tn; char** tval; int* id; int* tp; int size; } ;
typedef  TYPE_2__ event_dump ;
struct TYPE_23__ {int sn; } ;
typedef  TYPE_3__ event ;
struct TYPE_24__ {TYPE_1__* fields; } ;

/* Variables and functions */
 double* FUNC0 (TYPE_3__*,TYPE_1__*) ; 
 char* FUNC1 (TYPE_3__*,TYPE_1__*) ; 
 int* FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 long long* FUNC3 (TYPE_3__*,TYPE_1__*) ; 
 char* FUNC4 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_1__*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
#define  t_double 132 
#define  t_int 131 
#define  t_long 130 
#define  t_raw 129 
#define  t_string 128 
 char* FUNC10 (char*,int) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_4__* types ; 

int FUNC12 (event_dump *d, event *e, int type_id, event *v) {
  int i, j;

  if (e == NULL) {
    return 0;
  }

  FUNC7 (d->type_id == type_id);

//  d->tn = 0;
//  d->size = 0;
//  d->type_id = type_id;

  field_desc *f = types[type_id].fields;

  int tn = d->tn;

  for (i = 0; i < e->sn; i++) {
    if (FUNC8 (e, i)) {
      char *dest;
      int flag = 0, add = 0;
      if (v != NULL && FUNC8 (v, i) && f[i].type != t_string && f[i].type != t_raw) {
        dest = FUNC1 (v, &f[i]);
      } else {
        dest = d->tval[d->tn];
        flag = 1;
      }

      j = tn;
      switch (f[i].type) {
      case t_int:
        *(int *)dest = *FUNC2 (e, &f[i]);
        add = sizeof (int);
        break;
      case t_long:
        *(long long *)dest = *FUNC3 (e, &f[i]);
        add = sizeof (long long);
        break;
      case t_double:
        *(double *)dest = *FUNC0 (e, &f[i]);
        add = sizeof (double);
        break;
      case t_string:
        //TODO: it can be optimized
        for (j = 0; j < tn; j++) {
          if (d->id[j] == i) {
            break;
          }
        }

        if (j == tn) {
          *(char **)d->tval[d->tn] = FUNC11 (FUNC5 (e, &f[i]));
          add = FUNC9 (*(char **)d->tval[d->tn]) + 1;
        }
        break;
      case t_raw:
        for (j = 0; j < tn; j++) {
          if (d->id[j] == i) {
            break;
          }
        }

        if (j == tn) {
          char *x = FUNC4 (e, &f[i]);
          add = FUNC6 (x);
          *(char **)d->tval[d->tn] = FUNC10 (x, add);
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