
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct mtrr_iter {int mtrr_disabled; int partial_map; int fixed; int * range; void* end; void* start; struct kvm_mtrr* mtrr_state; } ;
struct kvm_mtrr {int dummy; } ;


 int mtrr_lookup_start (struct mtrr_iter*) ;

__attribute__((used)) static void mtrr_lookup_init(struct mtrr_iter *iter,
        struct kvm_mtrr *mtrr_state, u64 start, u64 end)
{
 iter->mtrr_state = mtrr_state;
 iter->start = start;
 iter->end = end;
 iter->mtrr_disabled = 0;
 iter->partial_map = 0;
 iter->fixed = 0;
 iter->range = ((void*)0);

 mtrr_lookup_start(iter);
}
