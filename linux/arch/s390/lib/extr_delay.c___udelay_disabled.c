
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct s390_idle_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ clock_comparator; } ;


 int CIF_IGNORE_IRQ ;
 unsigned long CR0_IRQ_SUBCLASS_MASK ;
 unsigned long PSW_MASK_EXT ;
 unsigned long PSW_MASK_WAIT ;
 TYPE_1__ S390_lowcore ;
 int __ctl_load (unsigned long,int ,int ) ;
 int __ctl_store (unsigned long,int ,int ) ;
 unsigned long __extract_psw () ;
 int clear_cpu_flag (int ) ;
 scalar_t__ get_tod_clock () ;
 int psw_idle (struct s390_idle_data*,unsigned long) ;
 int set_clock_comparator (scalar_t__) ;
 int set_cpu_flag (int ) ;

__attribute__((used)) static void __udelay_disabled(unsigned long long usecs)
{
 unsigned long cr0, cr0_new, psw_mask;
 struct s390_idle_data idle;
 u64 end;

 end = get_tod_clock() + (usecs << 12);
 __ctl_store(cr0, 0, 0);
 cr0_new = cr0 & ~CR0_IRQ_SUBCLASS_MASK;
 cr0_new |= (1UL << (63 - 52));
 __ctl_load(cr0_new, 0, 0);
 psw_mask = __extract_psw() | PSW_MASK_EXT | PSW_MASK_WAIT;
 set_clock_comparator(end);
 set_cpu_flag(CIF_IGNORE_IRQ);
 psw_idle(&idle, psw_mask);
 clear_cpu_flag(CIF_IGNORE_IRQ);
 set_clock_comparator(S390_lowcore.clock_comparator);
 __ctl_load(cr0, 0, 0);
}
