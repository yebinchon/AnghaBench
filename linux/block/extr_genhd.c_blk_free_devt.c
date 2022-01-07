
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dev_t ;


 scalar_t__ BLOCK_EXT_MAJOR ;
 scalar_t__ MAJOR (scalar_t__) ;
 int MINOR (scalar_t__) ;
 scalar_t__ MKDEV (int ,int ) ;
 int blk_mangle_minor (int ) ;
 int ext_devt_idr ;
 int ext_devt_lock ;
 int idr_remove (int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void blk_free_devt(dev_t devt)
{
 if (devt == MKDEV(0, 0))
  return;

 if (MAJOR(devt) == BLOCK_EXT_MAJOR) {
  spin_lock_bh(&ext_devt_lock);
  idr_remove(&ext_devt_idr, blk_mangle_minor(MINOR(devt)));
  spin_unlock_bh(&ext_devt_lock);
 }
}
