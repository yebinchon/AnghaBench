
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_val {int dummy; } ;
struct switch_dev {int ops; } ;


 int printf (char*) ;
 int show_attrs (struct switch_dev*,int ,struct switch_val*) ;

__attribute__((used)) static void
show_global(struct switch_dev *dev)
{
 struct switch_val val;

 printf("Global attributes:\n");
 show_attrs(dev, dev->ops, &val);
}
