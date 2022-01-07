
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int exit; int fixups; } ;


 int SPRN_PIR ;
 int _dtb_start ;
 scalar_t__ _end ;
 int fatal (char*) ;
 scalar_t__ fdt_check_header (int ) ;
 int* fdt_getprop (int ,int,char*,int*) ;
 int fdt_init (int ) ;
 int fdt_node_offset_by_prop_value (int ,int,char*,char*,int) ;
 int fdt_set_boot_cpuid_phys (int ,int) ;
 int ibm44x_dbcr_reset ;
 int ibm_currituck_detect_memsize () ;
 int ibm_currituck_fixups ;
 int ibm_currituck_memsize ;
 int mfspr (int ) ;
 TYPE_1__ platform_ops ;
 int serial_console_init () ;
 int simple_alloc_init (scalar_t__,unsigned long,int,int) ;
 int timebase_period_ns ;

void platform_init(void)
{
 unsigned long end_of_ram, avail_ram;
 u32 pir_reg;
 int node, size;
 const u32 *timebase;

 ibm_currituck_memsize = ibm_currituck_detect_memsize();
 if (ibm_currituck_memsize >> 32)
  end_of_ram = ~0UL;
 else
  end_of_ram = ibm_currituck_memsize;
 avail_ram = end_of_ram - (unsigned long)_end;

 simple_alloc_init(_end, avail_ram, 128, 64);
 platform_ops.fixups = ibm_currituck_fixups;
 platform_ops.exit = ibm44x_dbcr_reset;
 pir_reg = mfspr(SPRN_PIR);


 if (fdt_check_header(_dtb_start) != 0)
  fatal("Invalid device tree blob\n");

 node = fdt_node_offset_by_prop_value(_dtb_start, -1, "device_type",
                                      "cpu", sizeof("cpu"));
 if (!node)
  fatal("Cannot find cpu node\n");
 timebase = fdt_getprop(_dtb_start, node, "timebase-frequency", &size);
 if (timebase && (size == 4))
  timebase_period_ns = 1000000000 / *timebase;

 fdt_set_boot_cpuid_phys(_dtb_start, pir_reg);
 fdt_init(_dtb_start);

 serial_console_init();
}
