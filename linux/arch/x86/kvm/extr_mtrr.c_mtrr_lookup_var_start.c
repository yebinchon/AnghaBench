
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtrr_iter {int fixed; int * range; int start; int start_max; struct kvm_mtrr* mtrr_state; } ;
struct kvm_mtrr {int head; } ;


 int __mtrr_lookup_var_next (struct mtrr_iter*) ;
 int * list_prepare_entry (int *,int *,int ) ;
 int node ;

__attribute__((used)) static void mtrr_lookup_var_start(struct mtrr_iter *iter)
{
 struct kvm_mtrr *mtrr_state = iter->mtrr_state;

 iter->fixed = 0;
 iter->start_max = iter->start;
 iter->range = ((void*)0);
 iter->range = list_prepare_entry(iter->range, &mtrr_state->head, node);

 __mtrr_lookup_var_next(iter);
}
