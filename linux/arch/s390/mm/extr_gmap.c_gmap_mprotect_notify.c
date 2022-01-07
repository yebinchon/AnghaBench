
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gmap {TYPE_1__* mm; } ;
struct TYPE_2__ {int mmap_sem; } ;


 int EINVAL ;
 int GMAP_NOTIFY_MPROT ;
 int MACHINE_HAS_ESOP ;
 unsigned long PAGE_MASK ;
 int PROT_READ ;
 int down_read (int *) ;
 scalar_t__ gmap_is_shadow (struct gmap*) ;
 int gmap_protect_range (struct gmap*,unsigned long,unsigned long,int,int ) ;
 int up_read (int *) ;

int gmap_mprotect_notify(struct gmap *gmap, unsigned long gaddr,
    unsigned long len, int prot)
{
 int rc;

 if ((gaddr & ~PAGE_MASK) || (len & ~PAGE_MASK) || gmap_is_shadow(gmap))
  return -EINVAL;
 if (!MACHINE_HAS_ESOP && prot == PROT_READ)
  return -EINVAL;
 down_read(&gmap->mm->mmap_sem);
 rc = gmap_protect_range(gmap, gaddr, len, prot, GMAP_NOTIFY_MPROT);
 up_read(&gmap->mm->mmap_sem);
 return rc;
}
