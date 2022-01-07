
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gmap {TYPE_1__* mm; } ;
struct TYPE_2__ {int mmap_sem; } ;


 int BUG_ON (int ) ;
 int EINVAL ;
 int PMD_SIZE ;
 int __gmap_unmap_by_gaddr (struct gmap*,unsigned long) ;
 int down_write (int *) ;
 int gmap_flush_tlb (struct gmap*) ;
 int gmap_is_shadow (struct gmap*) ;
 int up_write (int *) ;

int gmap_unmap_segment(struct gmap *gmap, unsigned long to, unsigned long len)
{
 unsigned long off;
 int flush;

 BUG_ON(gmap_is_shadow(gmap));
 if ((to | len) & (PMD_SIZE - 1))
  return -EINVAL;
 if (len == 0 || to + len < to)
  return -EINVAL;

 flush = 0;
 down_write(&gmap->mm->mmap_sem);
 for (off = 0; off < len; off += PMD_SIZE)
  flush |= __gmap_unmap_by_gaddr(gmap, to + off);
 up_write(&gmap->mm->mmap_sem);
 if (flush)
  gmap_flush_tlb(gmap);
 return 0;
}
