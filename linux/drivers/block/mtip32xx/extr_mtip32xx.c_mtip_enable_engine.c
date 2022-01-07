
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtip_port {scalar_t__ mmio; } ;


 scalar_t__ PORT_CMD ;
 int PORT_CMD_START ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mtip_enable_engine(struct mtip_port *port, int enable)
{
 u32 tmp;


 tmp = readl(port->mmio + PORT_CMD);
 if (enable)
  writel(tmp | PORT_CMD_START, port->mmio + PORT_CMD);
 else
  writel(tmp & ~PORT_CMD_START, port->mmio + PORT_CMD);

 readl(port->mmio + PORT_CMD);
 return (((tmp & PORT_CMD_START) == PORT_CMD_START));
}
