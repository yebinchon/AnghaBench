
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {scalar_t__ partno; } ;
struct gendisk {scalar_t__ minors; scalar_t__ first_minor; int major; } ;
typedef int dev_t ;


 int BLOCK_EXT_MAJOR ;
 int EBUSY ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int MKDEV (int ,scalar_t__) ;
 int NR_EXT_DEVT ;
 scalar_t__ blk_mangle_minor (int) ;
 int ext_devt_idr ;
 int ext_devt_lock ;
 int idr_alloc (int *,struct hd_struct*,int ,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 struct gendisk* part_to_disk (struct hd_struct*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int blk_alloc_devt(struct hd_struct *part, dev_t *devt)
{
 struct gendisk *disk = part_to_disk(part);
 int idx;


 if (part->partno < disk->minors) {
  *devt = MKDEV(disk->major, disk->first_minor + part->partno);
  return 0;
 }


 idr_preload(GFP_KERNEL);

 spin_lock_bh(&ext_devt_lock);
 idx = idr_alloc(&ext_devt_idr, part, 0, NR_EXT_DEVT, GFP_NOWAIT);
 spin_unlock_bh(&ext_devt_lock);

 idr_preload_end();
 if (idx < 0)
  return idx == -ENOSPC ? -EBUSY : idx;

 *devt = MKDEV(BLOCK_EXT_MAJOR, blk_mangle_minor(idx));
 return 0;
}
