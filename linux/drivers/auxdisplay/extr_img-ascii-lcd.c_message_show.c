
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_ascii_lcd_ctx {char* message; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct img_ascii_lcd_ctx* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t message_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct img_ascii_lcd_ctx *ctx = dev_get_drvdata(dev);

 return sprintf(buf, "%s\n", ctx->message);
}
