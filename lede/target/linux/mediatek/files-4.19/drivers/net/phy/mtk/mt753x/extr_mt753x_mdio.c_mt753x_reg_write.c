
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct gsw_mt753x {TYPE_1__* host_bus; int smi_addr; } ;
struct TYPE_4__ {int mdio_lock; int (* write ) (TYPE_1__*,int ,int,int) ;} ;


 int MT753X_REG_ADDR_M ;
 int MT753X_REG_ADDR_S ;
 int MT753X_REG_PAGE_ADDR_M ;
 int MT753X_REG_PAGE_ADDR_S ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_1__*,int ,int,int) ;
 int stub2 (TYPE_1__*,int ,int,int) ;
 int stub3 (TYPE_1__*,int ,int,int) ;

void mt753x_reg_write(struct gsw_mt753x *gsw, u32 reg, u32 val)
{
 mutex_lock(&gsw->host_bus->mdio_lock);

 gsw->host_bus->write(gsw->host_bus, gsw->smi_addr, 0x1f,
  (reg & MT753X_REG_PAGE_ADDR_M) >> MT753X_REG_PAGE_ADDR_S);

 gsw->host_bus->write(gsw->host_bus, gsw->smi_addr,
  (reg & MT753X_REG_ADDR_M) >> MT753X_REG_ADDR_S, val & 0xffff);

 gsw->host_bus->write(gsw->host_bus, gsw->smi_addr, 0x10, val >> 16);

 mutex_unlock(&gsw->host_bus->mdio_lock);
}
