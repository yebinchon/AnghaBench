
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ST0_MX ;
 scalar_t__ cpu_has_dsp ;
 int ehb () ;
 int read_c0_status () ;
 int write_c0_status (int ) ;

__attribute__((used)) static void kvm_mips_set_c0_status(void)
{
 u32 status = read_c0_status();

 if (cpu_has_dsp)
  status |= (ST0_MX);

 write_c0_status(status);
 ehb();
}
