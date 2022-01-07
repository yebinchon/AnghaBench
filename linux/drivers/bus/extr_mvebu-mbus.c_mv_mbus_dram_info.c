
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbus_dram_target_info {int dummy; } ;


 struct mbus_dram_target_info const mvebu_mbus_dram_info ;

const struct mbus_dram_target_info *mv_mbus_dram_info(void)
{
 return &mvebu_mbus_dram_info;
}
