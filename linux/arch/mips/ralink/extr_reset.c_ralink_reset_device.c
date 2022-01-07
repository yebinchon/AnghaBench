
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;


 int ralink_assert_device (struct reset_controller_dev*,unsigned long) ;
 int ralink_deassert_device (struct reset_controller_dev*,unsigned long) ;

__attribute__((used)) static int ralink_reset_device(struct reset_controller_dev *rcdev,
          unsigned long id)
{
 ralink_assert_device(rcdev, id);
 return ralink_deassert_device(rcdev, id);
}
