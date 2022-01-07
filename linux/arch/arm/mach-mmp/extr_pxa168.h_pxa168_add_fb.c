
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa168fb_mach_info {int dummy; } ;


 int pxa168_device_fb ;
 int pxa_register_device (int *,struct pxa168fb_mach_info*,int) ;

__attribute__((used)) static inline int pxa168_add_fb(struct pxa168fb_mach_info *mi)
{
 return pxa_register_device(&pxa168_device_fb, mi, sizeof(*mi));
}
