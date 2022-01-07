
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_ascii_lcd_ctx {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct img_ascii_lcd_ctx* dev_get_drvdata (struct device*) ;
 int img_ascii_lcd_display (struct img_ascii_lcd_ctx*,char const*,size_t) ;

__attribute__((used)) static ssize_t message_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct img_ascii_lcd_ctx *ctx = dev_get_drvdata(dev);
 int err;

 err = img_ascii_lcd_display(ctx, buf, count);
 return err ?: count;
}
