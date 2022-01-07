
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct sa1111_dev {TYPE_1__ dev; } ;
struct sa1111 {int dummy; } ;


 scalar_t__ dev_get_drvdata (int ) ;

__attribute__((used)) static inline struct sa1111 *sa1111_chip_driver(struct sa1111_dev *sadev)
{
 return (struct sa1111 *)dev_get_drvdata(sadev->dev.parent);
}
