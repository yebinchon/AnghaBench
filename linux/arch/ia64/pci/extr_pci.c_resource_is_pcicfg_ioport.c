
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; int start; int end; } ;


 int IORESOURCE_IO ;

__attribute__((used)) static bool resource_is_pcicfg_ioport(struct resource *res)
{
 return (res->flags & IORESOURCE_IO) &&
  res->start == 0xCF8 && res->end == 0xCFF;
}
