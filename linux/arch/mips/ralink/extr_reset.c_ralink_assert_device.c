
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct reset_controller_dev {int dummy; } ;


 int BIT (unsigned long) ;
 int SYSC_REG_RESET_CTRL ;
 int rt_sysc_r32 (int ) ;
 int rt_sysc_w32 (int ,int ) ;

__attribute__((used)) static int ralink_assert_device(struct reset_controller_dev *rcdev,
    unsigned long id)
{
 u32 val;

 if (id < 8)
  return -1;

 val = rt_sysc_r32(SYSC_REG_RESET_CTRL);
 val |= BIT(id);
 rt_sysc_w32(val, SYSC_REG_RESET_CTRL);

 return 0;
}
