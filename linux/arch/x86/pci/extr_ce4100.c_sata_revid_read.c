
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sim_dev_reg {int dummy; } ;


 int reg_read (struct sim_dev_reg*,int *) ;

__attribute__((used)) static void sata_revid_read(struct sim_dev_reg *reg, u32 *value)
{
 reg_read(reg, value);
}
