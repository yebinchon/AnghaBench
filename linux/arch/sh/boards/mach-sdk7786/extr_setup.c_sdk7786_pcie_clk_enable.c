
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int PCIECR ;
 int PCIECR_CLKEN ;
 int fpga_read_reg (int ) ;
 int fpga_write_reg (int,int ) ;

__attribute__((used)) static int sdk7786_pcie_clk_enable(struct clk *clk)
{
 fpga_write_reg(fpga_read_reg(PCIECR) | PCIECR_CLKEN, PCIECR);
 return 0;
}
