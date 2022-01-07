
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cs2000_priv {int dummy; } ;
typedef int s32 ;


 int DEVICE_ID ;
 int EIO ;


 int REVISION_MASK ;
 int cs2000_read (struct cs2000_priv*,int ) ;
 int dev_info (struct device*,char*,char const*) ;
 struct device* priv_to_dev (struct cs2000_priv*) ;

__attribute__((used)) static int cs2000_version_print(struct cs2000_priv *priv)
{
 struct device *dev = priv_to_dev(priv);
 s32 val;
 const char *revision;

 val = cs2000_read(priv, DEVICE_ID);
 if (val < 0)
  return val;


 if (val >> 3)
  return -EIO;

 switch (val & REVISION_MASK) {
 case 129:
  revision = "B2 / B3";
  break;
 case 128:
  revision = "C1";
  break;
 default:
  return -EIO;
 }

 dev_info(dev, "revision - %s\n", revision);

 return 0;
}
