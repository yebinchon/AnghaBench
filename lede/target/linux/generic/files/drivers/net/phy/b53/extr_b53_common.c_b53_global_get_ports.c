
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; } ;
struct switch_val {TYPE_1__ value; int len; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct b53_device {int enabled_ports; int buf; } ;


 int B53_BUF_SIZE ;
 int snprintf (int ,int ,char*,int) ;
 struct b53_device* sw_to_b53 (struct switch_dev*) ;

__attribute__((used)) static int b53_global_get_ports(struct switch_dev *dev,
    const struct switch_attr *attr,
    struct switch_val *val)
{
 struct b53_device *priv = sw_to_b53(dev);

 val->len = snprintf(priv->buf, B53_BUF_SIZE, "0x%04x",
       priv->enabled_ports);
 val->value.s = priv->buf;

 return 0;
}
