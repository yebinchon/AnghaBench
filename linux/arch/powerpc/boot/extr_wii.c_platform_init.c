
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int write; } ;
struct TYPE_3__ {int fixups; } ;


 int EXI_CTRL ;
 int EXI_CTRL_ENABLE ;
 int _dtb_start ;
 scalar_t__ _end ;
 TYPE_2__ console_ops ;
 int fdt_init (int ) ;
 int in_be32 (int ) ;
 int out_be32 (int ,int) ;
 int platform_fixups ;
 TYPE_1__ platform_ops ;
 int simple_alloc_init (scalar_t__,scalar_t__,int,int) ;
 int ug_console_write ;
 scalar_t__ ug_probe () ;

void platform_init(unsigned long r3, unsigned long r4, unsigned long r5)
{
 u32 heapsize = 24*1024*1024 - (u32)_end;

 simple_alloc_init(_end, heapsize, 32, 64);
 fdt_init(_dtb_start);





 out_be32(EXI_CTRL, in_be32(EXI_CTRL) | EXI_CTRL_ENABLE);

 if (ug_probe())
  console_ops.write = ug_console_write;

 platform_ops.fixups = platform_fixups;
}
