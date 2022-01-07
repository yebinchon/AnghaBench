
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simdisk {scalar_t__ queue; scalar_t__ gd; } ;
struct proc_dir_entry {int dummy; } ;


 int blk_cleanup_queue (scalar_t__) ;
 int del_gendisk (scalar_t__) ;
 int remove_proc_entry (char*,struct proc_dir_entry*) ;
 int simdisk_detach (struct simdisk*) ;

__attribute__((used)) static void simdisk_teardown(struct simdisk *dev, int which,
  struct proc_dir_entry *procdir)
{
 char tmp[2] = { '0' + which, 0 };

 simdisk_detach(dev);
 if (dev->gd)
  del_gendisk(dev->gd);
 if (dev->queue)
  blk_cleanup_queue(dev->queue);
 remove_proc_entry(tmp, procdir);
}
