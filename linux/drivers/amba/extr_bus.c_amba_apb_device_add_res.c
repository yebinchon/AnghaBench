
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
struct amba_device {int dummy; } ;
typedef int resource_size_t ;


 struct amba_device* amba_aphb_device_add (struct device*,char const*,int ,size_t,int,int,void*,unsigned int,int ,struct resource*) ;

struct amba_device *
amba_apb_device_add_res(struct device *parent, const char *name,
   resource_size_t base, size_t size, int irq1,
   int irq2, void *pdata, unsigned int periphid,
   struct resource *resbase)
{
 return amba_aphb_device_add(parent, name, base, size, irq1, irq2, pdata,
        periphid, 0, resbase);
}
