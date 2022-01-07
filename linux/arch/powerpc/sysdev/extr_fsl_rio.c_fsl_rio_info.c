
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;


 int dev_info (struct device*,char*,...) ;

__attribute__((used)) static inline void fsl_rio_info(struct device *dev, u32 ccsr)
{
 const char *str;
 if (ccsr & 1) {

  switch (ccsr >> 30) {
  case 0:
   str = "1";
   break;
  case 1:
   str = "4";
   break;
  default:
   str = "Unknown";
   break;
  }
  dev_info(dev, "Hardware port width: %s\n", str);

  switch ((ccsr >> 27) & 7) {
  case 0:
   str = "Single-lane 0";
   break;
  case 1:
   str = "Single-lane 2";
   break;
  case 2:
   str = "Four-lane";
   break;
  default:
   str = "Unknown";
   break;
  }
  dev_info(dev, "Training connection status: %s\n", str);
 } else {

  if (!(ccsr & 0x80000000))
   dev_info(dev, "Output port operating in 8-bit mode\n");
  if (!(ccsr & 0x08000000))
   dev_info(dev, "Input port operating in 8-bit mode\n");
 }
}
