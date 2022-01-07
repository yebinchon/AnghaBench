
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111_dev {int * hwirq; } ;
struct sa1111 {int dummy; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int EINVAL ;
 struct sa1111* sa1111_chip_driver (struct sa1111_dev*) ;
 int sa1111_map_irq (struct sa1111*,int ) ;

int sa1111_get_irq(struct sa1111_dev *sadev, unsigned num)
{
 struct sa1111 *sachip = sa1111_chip_driver(sadev);
 if (num >= ARRAY_SIZE(sadev->hwirq))
  return -EINVAL;
 return sa1111_map_irq(sachip, sadev->hwirq[num]);
}
