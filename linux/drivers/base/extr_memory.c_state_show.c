
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_block {int state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;





 int WARN_ON (int) ;
 int sprintf (char*,char*,...) ;
 struct memory_block* to_memory_block (struct device*) ;

__attribute__((used)) static ssize_t state_show(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 struct memory_block *mem = to_memory_block(dev);
 ssize_t len = 0;





 switch (mem->state) {
 case 128:
  len = sprintf(buf, "online\n");
  break;
 case 129:
  len = sprintf(buf, "offline\n");
  break;
 case 130:
  len = sprintf(buf, "going-offline\n");
  break;
 default:
  len = sprintf(buf, "ERROR-UNKNOWN-%ld\n",
    mem->state);
  WARN_ON(1);
  break;
 }

 return len;
}
