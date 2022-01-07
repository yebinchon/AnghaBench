
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; scalar_t__ mask; } ;
struct sim_dev_reg {TYPE_1__ sim_reg; } ;



void sata_revid_init(struct sim_dev_reg *reg)
{
 reg->sim_reg.value = 0x01060100;
 reg->sim_reg.mask = 0;
}
