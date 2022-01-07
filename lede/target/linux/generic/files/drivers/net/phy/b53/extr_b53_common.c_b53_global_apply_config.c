
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int dummy; } ;
struct b53_device {int dummy; } ;


 int b53_apply (struct b53_device*) ;
 int b53_set_forwarding (struct b53_device*,int) ;
 struct b53_device* sw_to_b53 (struct switch_dev*) ;

__attribute__((used)) static int b53_global_apply_config(struct switch_dev *dev)
{
 struct b53_device *priv = sw_to_b53(dev);


 b53_set_forwarding(priv, 0);

 b53_apply(priv);


 b53_set_forwarding(priv, 1);

 return 0;
}
