
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar8xxx_priv {int dummy; } ;


 int AR8216_REG_PORT_STATUS (int) ;
 int ar8xxx_read (struct ar8xxx_priv*,int ) ;

__attribute__((used)) static u32
ar8216_read_port_status(struct ar8xxx_priv *priv, int port)
{
 return ar8xxx_read(priv, AR8216_REG_PORT_STATUS(port));
}
