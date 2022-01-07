
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;
struct of_phandle_args {scalar_t__ args_count; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int sunxi_ve_of_xlate(struct reset_controller_dev *rcdev,
        const struct of_phandle_args *reset_spec)
{
 if (WARN_ON(reset_spec->args_count != 0))
  return -EINVAL;

 return 0;
}
