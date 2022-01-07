
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disabled_wait () ;
 int print_machine_type () ;
 int print_missing_facilities () ;
 int sclp_early_printk (char*) ;

__attribute__((used)) static void facility_mismatch(void)
{
 sclp_early_printk("The Linux kernel requires more recent processor hardware\n");
 print_machine_type();
 print_missing_facilities();
 sclp_early_printk("See Principles of Operations for facility bits\n");
 disabled_wait();
}
