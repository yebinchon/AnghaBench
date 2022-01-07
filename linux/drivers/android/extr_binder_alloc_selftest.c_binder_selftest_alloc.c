
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_alloc {int vma; } ;


 int BUFFER_NUM ;
 int binder_selftest_alloc_offset (struct binder_alloc*,size_t*,int ) ;
 scalar_t__ binder_selftest_failures ;
 int binder_selftest_lock ;
 int binder_selftest_run ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,...) ;

void binder_selftest_alloc(struct binder_alloc *alloc)
{
 size_t end_offset[BUFFER_NUM];

 if (!binder_selftest_run)
  return;
 mutex_lock(&binder_selftest_lock);
 if (!binder_selftest_run || !alloc->vma)
  goto done;
 pr_info("STARTED\n");
 binder_selftest_alloc_offset(alloc, end_offset, 0);
 binder_selftest_run = 0;
 if (binder_selftest_failures > 0)
  pr_info("%d tests FAILED\n", binder_selftest_failures);
 else
  pr_info("PASSED\n");

done:
 mutex_unlock(&binder_selftest_lock);
}
