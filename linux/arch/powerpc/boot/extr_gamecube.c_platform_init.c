
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int write; } ;


 int _dtb_start ;
 scalar_t__ _end ;
 TYPE_1__ console_ops ;
 int fdt_init (int ) ;
 int simple_alloc_init (scalar_t__,scalar_t__,int,int) ;
 int ug_console_write ;
 scalar_t__ ug_probe () ;

void platform_init(unsigned long r3, unsigned long r4, unsigned long r5)
{
 u32 heapsize = 16*1024*1024 - (u32)_end;

 simple_alloc_init(_end, heapsize, 32, 64);
 fdt_init(_dtb_start);

 if (ug_probe())
  console_ops.write = ug_console_write;
}
