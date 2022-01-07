
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_data {scalar_t__ offset; int reg; } ;
struct reset_controller_dev {int dummy; } ;


 int BIT (scalar_t__) ;
 struct reset_data* rcdev_to_reset_data (struct reset_controller_dev*) ;
 int readl (int ) ;

__attribute__((used)) static int sun4i_a10_display_status(struct reset_controller_dev *rcdev,
        unsigned long id)
{
 struct reset_data *data = rcdev_to_reset_data(rcdev);

 return !(readl(data->reg) & BIT(data->offset + id));
}
