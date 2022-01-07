
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct packing_data {int odb_lock; void* oe_delta_size_limit; void* oe_size_limit; struct repository* repo; } ;


 unsigned long OE_DELTA_SIZE_BITS ;
 unsigned int OE_SIZE_BITS ;
 scalar_t__ git_env_bool (char*,int ) ;
 void* git_env_ulong (char*,unsigned long) ;
 int init_recursive_mutex (int *) ;
 int prepare_in_pack_by_idx (struct packing_data*) ;

void prepare_packing_data(struct repository *r, struct packing_data *pdata)
{
 pdata->repo = r;

 if (git_env_bool("GIT_TEST_FULL_IN_PACK_ARRAY", 0)) {




 } else {
  prepare_in_pack_by_idx(pdata);
 }

 pdata->oe_size_limit = git_env_ulong("GIT_TEST_OE_SIZE",
          1U << OE_SIZE_BITS);
 pdata->oe_delta_size_limit = git_env_ulong("GIT_TEST_OE_DELTA_SIZE",
         1UL << OE_DELTA_SIZE_BITS);
 init_recursive_mutex(&pdata->odb_lock);
}
