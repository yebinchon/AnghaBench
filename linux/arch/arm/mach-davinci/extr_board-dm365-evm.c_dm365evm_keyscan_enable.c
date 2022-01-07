
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int DM365_KEYSCAN ;
 int davinci_cfg_reg (int ) ;

__attribute__((used)) static int dm365evm_keyscan_enable(struct device *dev)
{
 return davinci_cfg_reg(DM365_KEYSCAN);
}
