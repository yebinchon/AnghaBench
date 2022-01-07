
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* cur1; } ;
typedef TYPE_2__ iheap_en_t ;
struct TYPE_5__ {long long item_id; } ;


 int ihe_advance1_noload (TYPE_2__*) ;

__attribute__((used)) static void ihe_skip_advance1_slow (iheap_en_t *A, long long item_id) {
  while (A->cur1->item_id < item_id) {
    if (!ihe_advance1_noload (A)) {
      break;
    }
  }
}
