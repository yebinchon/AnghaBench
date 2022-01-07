
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_device_desc {int dummy; } ;


 int EINVAL ;
 struct pxa_device_desc mmp2_device_uart1 ;
 struct pxa_device_desc mmp2_device_uart2 ;
 struct pxa_device_desc mmp2_device_uart3 ;
 struct pxa_device_desc mmp2_device_uart4 ;
 int pxa_register_device (struct pxa_device_desc*,int *,int ) ;

__attribute__((used)) static inline int mmp2_add_uart(int id)
{
 struct pxa_device_desc *d = ((void*)0);

 switch (id) {
 case 1: d = &mmp2_device_uart1; break;
 case 2: d = &mmp2_device_uart2; break;
 case 3: d = &mmp2_device_uart3; break;
 case 4: d = &mmp2_device_uart4; break;
 default:
  return -EINVAL;
 }

 return pxa_register_device(d, ((void*)0), 0);
}
