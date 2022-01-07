
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* ihe_skip_advance1 ) (TYPE_1__*,long long) ;scalar_t__ cur1; scalar_t__ cur0; } ;
typedef TYPE_1__ iheap_en_t ;


 int ihe_load (TYPE_1__*) ;
 int ihe_skip_advance0 (TYPE_1__*,long long) ;
 int stub1 (TYPE_1__*,long long) ;

__attribute__((used)) inline static int ihe_skip_advance (iheap_en_t *A, long long item_id) {
  if (A->cur0) {
    ihe_skip_advance0 (A, item_id);
  }
  if (A->cur1) {
    A->ihe_skip_advance1 (A, item_id);
  }
  return ihe_load (A);
}
