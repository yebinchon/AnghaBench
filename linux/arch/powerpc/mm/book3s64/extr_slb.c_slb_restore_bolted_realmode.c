
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int slb_kern_bitmap; unsigned int slb_used_bitmap; scalar_t__ slb_cache_ptr; } ;


 unsigned int SLB_NUM_BOLTED ;
 int __slb_restore_bolted_realmode () ;
 TYPE_1__* get_paca () ;

void slb_restore_bolted_realmode(void)
{
 __slb_restore_bolted_realmode();
 get_paca()->slb_cache_ptr = 0;

 get_paca()->slb_kern_bitmap = (1U << SLB_NUM_BOLTED) - 1;
 get_paca()->slb_used_bitmap = get_paca()->slb_kern_bitmap;
}
