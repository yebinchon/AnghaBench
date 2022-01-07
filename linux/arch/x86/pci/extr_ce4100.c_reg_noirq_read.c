
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int value; } ;
struct sim_dev_reg {TYPE_1__ sim_reg; } ;



__attribute__((used)) static void reg_noirq_read(struct sim_dev_reg *reg, u32 *value)
{

 *value = reg->sim_reg.value & 0xfff00ff;
}
