
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 scalar_t__ BLOCK_EXT_MAJOR ;
 scalar_t__ MAJOR (int ) ;
 int MINOR (int ) ;
 int blk_mangle_minor (int ) ;
 int ext_devt_idr ;
 int ext_devt_lock ;
 int idr_replace (int *,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void blk_invalidate_devt(dev_t devt)
{
 if (MAJOR(devt) == BLOCK_EXT_MAJOR) {
  spin_lock_bh(&ext_devt_lock);
  idr_replace(&ext_devt_idr, ((void*)0), blk_mangle_minor(MINOR(devt)));
  spin_unlock_bh(&ext_devt_lock);
 }
}
