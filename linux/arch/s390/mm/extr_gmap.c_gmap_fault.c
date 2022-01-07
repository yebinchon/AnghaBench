
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gmap {TYPE_1__* mm; } ;
struct TYPE_2__ {int mmap_sem; } ;


 int EFAULT ;
 scalar_t__ IS_ERR_VALUE (unsigned long) ;
 int __gmap_link (struct gmap*,unsigned long,unsigned long) ;
 unsigned long __gmap_translate (struct gmap*,unsigned long) ;
 int current ;
 int down_read (int *) ;
 scalar_t__ fixup_user_fault (int ,TYPE_1__*,unsigned long,unsigned int,int*) ;
 int up_read (int *) ;

int gmap_fault(struct gmap *gmap, unsigned long gaddr,
        unsigned int fault_flags)
{
 unsigned long vmaddr;
 int rc;
 bool unlocked;

 down_read(&gmap->mm->mmap_sem);

retry:
 unlocked = 0;
 vmaddr = __gmap_translate(gmap, gaddr);
 if (IS_ERR_VALUE(vmaddr)) {
  rc = vmaddr;
  goto out_up;
 }
 if (fixup_user_fault(current, gmap->mm, vmaddr, fault_flags,
        &unlocked)) {
  rc = -EFAULT;
  goto out_up;
 }




 if (unlocked)
  goto retry;

 rc = __gmap_link(gmap, gaddr, vmaddr);
out_up:
 up_read(&gmap->mm->mmap_sem);
 return rc;
}
