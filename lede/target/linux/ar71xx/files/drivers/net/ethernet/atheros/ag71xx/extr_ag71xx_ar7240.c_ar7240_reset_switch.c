
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int dummy; } ;
struct ar7240sw {int dummy; } ;


 int ar7240sw_reset (struct ar7240sw*) ;
 struct ar7240sw* sw_to_ar7240 (struct switch_dev*) ;

__attribute__((used)) static int
ar7240_reset_switch(struct switch_dev *dev)
{
 struct ar7240sw *as = sw_to_ar7240(dev);
 ar7240sw_reset(as);
 return 0;
}
