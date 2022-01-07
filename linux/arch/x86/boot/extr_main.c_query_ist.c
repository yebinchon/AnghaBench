
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct biosregs {int ax; int edx; int ecx; int ebx; int eax; } ;
struct TYPE_4__ {int perf_level; int event; int command; int signature; } ;
struct TYPE_6__ {TYPE_1__ ist_info; } ;
struct TYPE_5__ {int level; } ;


 TYPE_3__ boot_params ;
 TYPE_2__ cpu ;
 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,struct biosregs*) ;

__attribute__((used)) static void query_ist(void)
{
 struct biosregs ireg, oreg;



 if (cpu.level < 6)
  return;

 initregs(&ireg);
 ireg.ax = 0xe980;
 ireg.edx = 0x47534943;
 intcall(0x15, &ireg, &oreg);

 boot_params.ist_info.signature = oreg.eax;
 boot_params.ist_info.command = oreg.ebx;
 boot_params.ist_info.event = oreg.ecx;
 boot_params.ist_info.perf_level = oreg.edx;
}
