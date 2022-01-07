
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gmap {TYPE_1__* mm; } ;
struct TYPE_2__ {int mmap_sem; } ;


 unsigned long __gmap_translate (struct gmap*,unsigned long) ;
 int down_read (int *) ;
 int up_read (int *) ;

unsigned long gmap_translate(struct gmap *gmap, unsigned long gaddr)
{
 unsigned long rc;

 down_read(&gmap->mm->mmap_sem);
 rc = __gmap_translate(gmap, gaddr);
 up_read(&gmap->mm->mmap_sem);
 return rc;
}
