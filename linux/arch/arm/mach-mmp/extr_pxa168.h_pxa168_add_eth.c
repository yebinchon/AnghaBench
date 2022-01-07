
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa168_eth_platform_data {int dummy; } ;


 int pxa168_device_eth ;
 int pxa_register_device (int *,struct pxa168_eth_platform_data*,int) ;

__attribute__((used)) static inline int pxa168_add_eth(struct pxa168_eth_platform_data *data)
{
 return pxa_register_device(&pxa168_device_eth, data, sizeof(*data));
}
