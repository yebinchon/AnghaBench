
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PWRCR ;
 int PWRCR_PDWNACK ;
 int PWRCR_PDWNREQ ;
 int cpu_sleep () ;
 int fpga_read_reg (int ) ;
 int fpga_write_reg (int,int ) ;

__attribute__((used)) static void sdk7786_power_off(void)
{
 fpga_write_reg(fpga_read_reg(PWRCR) | PWRCR_PDWNREQ, PWRCR);






 while ((fpga_read_reg(PWRCR) & PWRCR_PDWNACK) == 0)
  cpu_sleep();
}
