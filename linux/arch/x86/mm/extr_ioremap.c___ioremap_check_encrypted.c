
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int desc; } ;




 unsigned int IORES_MAP_ENCRYPTED ;
 int sev_active () ;

__attribute__((used)) static unsigned int __ioremap_check_encrypted(struct resource *res)
{
 if (!sev_active())
  return 0;

 switch (res->desc) {
 case 129:
 case 128:
  break;
 default:
  return IORES_MAP_ENCRYPTED;
 }

 return 0;
}
