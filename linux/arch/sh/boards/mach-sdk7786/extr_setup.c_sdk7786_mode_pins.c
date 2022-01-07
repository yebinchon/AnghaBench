
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MODSWR ;
 int fpga_read_reg (int ) ;

__attribute__((used)) static int sdk7786_mode_pins(void)
{
 return fpga_read_reg(MODSWR);
}
