
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_PORTS ;
 int REG_PHY (int) ;

__attribute__((used)) static int mv88e6063_port_to_phy_addr(int port)
{
 if (port >= 0 && port <= NUM_PORTS)
  return REG_PHY(port);
 return -1;
}
