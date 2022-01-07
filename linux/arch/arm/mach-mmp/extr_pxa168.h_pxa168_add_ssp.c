
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_device_desc {int dummy; } ;


 int EINVAL ;
 struct pxa_device_desc pxa168_device_ssp1 ;
 struct pxa_device_desc pxa168_device_ssp2 ;
 struct pxa_device_desc pxa168_device_ssp3 ;
 struct pxa_device_desc pxa168_device_ssp4 ;
 struct pxa_device_desc pxa168_device_ssp5 ;
 int pxa_register_device (struct pxa_device_desc*,int *,int ) ;

__attribute__((used)) static inline int pxa168_add_ssp(int id)
{
 struct pxa_device_desc *d = ((void*)0);

 switch (id) {
 case 1: d = &pxa168_device_ssp1; break;
 case 2: d = &pxa168_device_ssp2; break;
 case 3: d = &pxa168_device_ssp3; break;
 case 4: d = &pxa168_device_ssp4; break;
 case 5: d = &pxa168_device_ssp5; break;
 default:
  return -EINVAL;
 }
 return pxa_register_device(d, ((void*)0), 0);
}
