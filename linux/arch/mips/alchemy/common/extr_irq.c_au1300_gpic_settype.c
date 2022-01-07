
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {scalar_t__ irq; } ;
typedef int * irq_flow_handler_t ;


 scalar_t__ ALCHEMY_GPIC_INT_BASE ;
 int EINVAL ;
 unsigned long GPIC_CFG_IC_EDGE_BOTH ;
 unsigned long GPIC_CFG_IC_EDGE_FALL ;
 unsigned long GPIC_CFG_IC_EDGE_RISE ;
 unsigned long GPIC_CFG_IC_LEVEL_HIGH ;
 unsigned long GPIC_CFG_IC_LEVEL_LOW ;
 int GPIC_CFG_IC_MASK ;
 unsigned long GPIC_CFG_IC_OFF ;






 int au1300_gpic ;
 int au1300_gpic_chgcfg (scalar_t__,int ,unsigned long) ;
 int * handle_edge_irq ;
 int * handle_level_irq ;
 int irq_set_chip_handler_name_locked (struct irq_data*,int *,int *,unsigned char*) ;

__attribute__((used)) static int au1300_gpic_settype(struct irq_data *d, unsigned int type)
{
 unsigned long s;
 unsigned char *name = ((void*)0);
 irq_flow_handler_t hdl = ((void*)0);

 switch (type) {
 case 130:
  s = GPIC_CFG_IC_LEVEL_HIGH;
  name = "high";
  hdl = handle_level_irq;
  break;
 case 129:
  s = GPIC_CFG_IC_LEVEL_LOW;
  name = "low";
  hdl = handle_level_irq;
  break;
 case 131:
  s = GPIC_CFG_IC_EDGE_RISE;
  name = "posedge";
  hdl = handle_edge_irq;
  break;
 case 132:
  s = GPIC_CFG_IC_EDGE_FALL;
  name = "negedge";
  hdl = handle_edge_irq;
  break;
 case 133:
  s = GPIC_CFG_IC_EDGE_BOTH;
  name = "bothedge";
  hdl = handle_edge_irq;
  break;
 case 128:
  s = GPIC_CFG_IC_OFF;
  name = "disabled";
  hdl = handle_level_irq;
  break;
 default:
  return -EINVAL;
 }

 irq_set_chip_handler_name_locked(d, &au1300_gpic, hdl, name);

 au1300_gpic_chgcfg(d->irq - ALCHEMY_GPIC_INT_BASE, GPIC_CFG_IC_MASK, s);

 return 0;
}
