
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int dummy; } ;


 int rtl_hw_init (struct switch_dev*) ;

__attribute__((used)) static int
rtl_reset(struct switch_dev *dev)
{
 rtl_hw_init(dev);
 return 0;
}
