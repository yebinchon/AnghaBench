
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;


 int ccu_reset_assert (struct reset_controller_dev*,unsigned long) ;
 int ccu_reset_deassert (struct reset_controller_dev*,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int ccu_reset_reset(struct reset_controller_dev *rcdev,
      unsigned long id)
{
 ccu_reset_assert(rcdev, id);
 udelay(10);
 ccu_reset_deassert(rcdev, id);

 return 0;
}
