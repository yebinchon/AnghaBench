
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ccsidr_el1 ;
 int csselr_el1 ;
 int isb () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int read_sysreg (int ) ;
 int write_sysreg (int ,int ) ;

__attribute__((used)) static u32 get_ccsidr(u32 csselr)
{
 u32 ccsidr;


 local_irq_disable();
 write_sysreg(csselr, csselr_el1);
 isb();
 ccsidr = read_sysreg(ccsidr_el1);
 local_irq_enable();

 return ccsidr;
}
