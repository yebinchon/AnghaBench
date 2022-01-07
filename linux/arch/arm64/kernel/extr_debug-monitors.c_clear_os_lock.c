
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isb () ;
 int osdlr_el1 ;
 int oslar_el1 ;
 int write_sysreg (int ,int ) ;

__attribute__((used)) static int clear_os_lock(unsigned int cpu)
{
 write_sysreg(0, osdlr_el1);
 write_sysreg(0, oslar_el1);
 isb();
 return 0;
}
