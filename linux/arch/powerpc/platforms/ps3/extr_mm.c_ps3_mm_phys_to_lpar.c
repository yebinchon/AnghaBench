
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned long offset; } ;
struct TYPE_4__ {unsigned long size; } ;
struct TYPE_6__ {unsigned long total; TYPE_2__ r1; TYPE_1__ rm; } ;


 int BUG_ON (int ) ;
 int is_kernel_addr (unsigned long) ;
 TYPE_3__ map ;

unsigned long ps3_mm_phys_to_lpar(unsigned long phys_addr)
{
 BUG_ON(is_kernel_addr(phys_addr));
 return (phys_addr < map.rm.size || phys_addr >= map.total)
  ? phys_addr : phys_addr + map.r1.offset;
}
