
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_channel {int mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct dma_channel* to_dma_channel (struct device*) ;

__attribute__((used)) static ssize_t dma_show_mode(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct dma_channel *channel = to_dma_channel(dev);
 return sprintf(buf, "0x%08x\n", channel->mode);
}
