
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ve_spc_drvdata {int done; scalar_t__ baseaddr; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int cur_rsp_mask; int cur_rsp_stat; } ;


 int IRQ_HANDLED ;
 scalar_t__ PWC_STATUS ;
 int complete (int *) ;
 TYPE_1__* info ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static irqreturn_t ve_spc_irq_handler(int irq, void *data)
{
 struct ve_spc_drvdata *drv_data = data;
 uint32_t status = readl_relaxed(drv_data->baseaddr + PWC_STATUS);

 if (info->cur_rsp_mask & status) {
  info->cur_rsp_stat = status;
  complete(&drv_data->done);
 }

 return IRQ_HANDLED;
}
