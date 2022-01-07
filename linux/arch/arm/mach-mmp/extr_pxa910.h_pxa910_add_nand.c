
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa3xx_nand_platform_data {int dummy; } ;


 int pxa910_device_nand ;
 int pxa_register_device (int *,struct pxa3xx_nand_platform_data*,int) ;

__attribute__((used)) static inline int pxa910_add_nand(struct pxa3xx_nand_platform_data *info)
{
 return pxa_register_device(&pxa910_device_nand, info, sizeof(*info));
}
