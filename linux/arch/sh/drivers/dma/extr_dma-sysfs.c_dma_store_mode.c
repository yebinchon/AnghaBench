
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_channel {int mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int simple_strtoul (char const*,int *,int ) ;
 struct dma_channel* to_dma_channel (struct device*) ;

__attribute__((used)) static ssize_t dma_store_mode(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct dma_channel *channel = to_dma_channel(dev);
 channel->mode = simple_strtoul(buf, ((void*)0), 0);
 return count;
}
