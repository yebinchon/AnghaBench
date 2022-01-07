
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct pt_regs {unsigned long ip; } ;
struct TYPE_2__ {scalar_t__ x86_vendor; int x86; } ;


 unsigned long MODULES_END ;
 unsigned long MODULES_VADDR ;
 scalar_t__ X86_VENDOR_AMD ;
 scalar_t__ _etext ;
 scalar_t__ _stext ;
 TYPE_1__ boot_cpu_data ;
 int errata93_warning ;
 int printk_once (int ) ;

__attribute__((used)) static int is_errata93(struct pt_regs *regs, unsigned long address)
{
 return 0;
}
