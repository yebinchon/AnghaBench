
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct switch_val {int dummy; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct b53_device {int dummy; } ;


 int B53_GLOBAL_CONFIG ;
 int B53_MGMT_PAGE ;
 int GC_RESET_MIB ;
 int b53_read8 (struct b53_device*,int ,int ,int*) ;
 int b53_write8 (struct b53_device*,int ,int ,int) ;
 int mdelay (int) ;
 struct b53_device* sw_to_b53 (struct switch_dev*) ;

__attribute__((used)) static int b53_global_reset_mib(struct switch_dev *dev,
    const struct switch_attr *attr,
    struct switch_val *val)
{
 struct b53_device *priv = sw_to_b53(dev);
 u8 gc;

 b53_read8(priv, B53_MGMT_PAGE, B53_GLOBAL_CONFIG, &gc);

 b53_write8(priv, B53_MGMT_PAGE, B53_GLOBAL_CONFIG, gc | GC_RESET_MIB);
 mdelay(1);
 b53_write8(priv, B53_MGMT_PAGE, B53_GLOBAL_CONFIG, gc & ~GC_RESET_MIB);
 mdelay(1);

 return 0;
}
