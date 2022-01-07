
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
struct sim_dev_reg {TYPE_1__ sim_reg; int reg; int dev_func; } ;
struct TYPE_4__ {int (* read ) (int ,int,int ,int ,int,int *) ;} ;


 TYPE_2__ pci_direct_conf1 ;
 int stub1 (int ,int,int ,int ,int,int *) ;

__attribute__((used)) static void reg_init(struct sim_dev_reg *reg)
{
 pci_direct_conf1.read(0, 1, reg->dev_func, reg->reg, 4,
         &reg->sim_reg.value);
}
