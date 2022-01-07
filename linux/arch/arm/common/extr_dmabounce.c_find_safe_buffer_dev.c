
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct safe_buffer {int dummy; } ;
struct TYPE_2__ {int dmabounce; } ;
struct device {TYPE_1__ archdata; } ;
typedef int dma_addr_t ;


 int dev_err (struct device*,char*,char const*) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 struct safe_buffer* find_safe_buffer (int ,int ) ;

__attribute__((used)) static struct safe_buffer *find_safe_buffer_dev(struct device *dev,
  dma_addr_t dma_addr, const char *where)
{
 if (!dev || !dev->archdata.dmabounce)
  return ((void*)0);
 if (dma_mapping_error(dev, dma_addr)) {
  dev_err(dev, "Trying to %s invalid mapping\n", where);
  return ((void*)0);
 }
 return find_safe_buffer(dev->archdata.dmabounce, dma_addr);
}
