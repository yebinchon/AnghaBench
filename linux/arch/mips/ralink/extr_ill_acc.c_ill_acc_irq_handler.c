
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int ILL_ACC_ID_M ;
 int ILL_ACC_ID_S ;
 int ILL_ACC_LEN_M ;
 int ILL_ACC_OFF_M ;
 int ILL_ACC_OFF_S ;
 int ILL_ACC_WRITE ;
 int ILL_INT_STATUS ;
 int IRQ_HANDLED ;
 int REG_ILL_ACC_ADDR ;
 int REG_ILL_ACC_TYPE ;
 int dev_err (struct device*,char*,char*,int ,int,int,int) ;
 int * ill_acc_ids ;
 int rt_memc_r32 (int ) ;
 int rt_memc_w32 (int ,int ) ;

__attribute__((used)) static irqreturn_t ill_acc_irq_handler(int irq, void *_priv)
{
 struct device *dev = (struct device *) _priv;
 u32 addr = rt_memc_r32(REG_ILL_ACC_ADDR);
 u32 type = rt_memc_r32(REG_ILL_ACC_TYPE);

 dev_err(dev, "illegal %s access from %s - addr:0x%08x offset:%d len:%d\n",
  (type & ILL_ACC_WRITE) ? ("write") : ("read"),
  ill_acc_ids[(type >> ILL_ACC_ID_S) & ILL_ACC_ID_M],
  addr, (type >> ILL_ACC_OFF_S) & ILL_ACC_OFF_M,
  type & ILL_ACC_LEN_M);

 rt_memc_w32(ILL_INT_STATUS, REG_ILL_ACC_TYPE);

 return IRQ_HANDLED;
}
