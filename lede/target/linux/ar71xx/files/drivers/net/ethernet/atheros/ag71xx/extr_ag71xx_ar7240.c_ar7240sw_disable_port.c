
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar7240sw {int mii_bus; } ;


 int AR7240_PORT_CTRL_STATE_DISABLED ;
 int AR7240_REG_PORT_CTRL (unsigned int) ;
 int ar7240sw_reg_write (int ,int ,int ) ;

__attribute__((used)) static void ar7240sw_disable_port(struct ar7240sw *as, unsigned port)
{
 ar7240sw_reg_write(as->mii_bus, AR7240_REG_PORT_CTRL(port),
      AR7240_PORT_CTRL_STATE_DISABLED);
}
