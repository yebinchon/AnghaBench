
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* prev; scalar_t__ aio; } ;
typedef TYPE_1__ core_mf_t ;
struct TYPE_7__ {TYPE_1__* last; } ;


 TYPE_5__ MQ ;
 int assert (TYPE_1__*) ;

inline core_mf_t *touch_metafile (core_mf_t *M) {
  if (!M || M->aio) {
    return 0;
  }
  assert (M->next);

  M->prev->next = M->next;
  M->next->prev = M->prev;
  MQ.last->next = M;
  M->prev = MQ.last;
  M->next = (core_mf_t *) &MQ;
  MQ.last = M;

  return M;
}
