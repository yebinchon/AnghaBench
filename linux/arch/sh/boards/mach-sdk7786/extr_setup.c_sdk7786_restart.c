
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SRSTR ;
 int fpga_write_reg (int,int ) ;

__attribute__((used)) static void sdk7786_restart(char *cmd)
{
 fpga_write_reg(0xa5a5, SRSTR);
}
