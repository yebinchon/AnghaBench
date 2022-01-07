
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int save_ptr_stash_phys; void* save_ptr_stash; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 void* kcalloc (int ,int,int ) ;
 int mpidr_hash_size () ;
 TYPE_1__ sleep_save_sp ;
 int sync_cache_w (TYPE_1__*) ;
 int virt_to_phys (void*) ;

__attribute__((used)) static int cpu_suspend_alloc_sp(void)
{
 void *ctx_ptr;

 ctx_ptr = kcalloc(mpidr_hash_size(), sizeof(u32), GFP_KERNEL);

 if (WARN_ON(!ctx_ptr))
  return -ENOMEM;
 sleep_save_sp.save_ptr_stash = ctx_ptr;
 sleep_save_sp.save_ptr_stash_phys = virt_to_phys(ctx_ptr);
 sync_cache_w(&sleep_save_sp);
 return 0;
}
