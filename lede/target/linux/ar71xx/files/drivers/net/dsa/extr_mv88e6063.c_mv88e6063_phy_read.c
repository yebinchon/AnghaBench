
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;


 int mv88e6063_port_to_phy_addr (int) ;
 int reg_read (struct dsa_switch*,int,int) ;

__attribute__((used)) static int mv88e6063_phy_read(struct dsa_switch *ds, int port, int regnum)
{
 int addr;

 addr = mv88e6063_port_to_phy_addr(port);
 if (addr == -1)
  return 0xffff;

 return reg_read(ds, addr, regnum);
}
