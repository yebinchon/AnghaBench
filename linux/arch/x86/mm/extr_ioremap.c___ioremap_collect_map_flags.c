
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct ioremap_desc {int flags; } ;


 int IORES_MAP_ENCRYPTED ;
 int IORES_MAP_SYSTEM_RAM ;
 int __ioremap_check_encrypted (struct resource*) ;
 int __ioremap_check_ram (struct resource*) ;

__attribute__((used)) static int __ioremap_collect_map_flags(struct resource *res, void *arg)
{
 struct ioremap_desc *desc = arg;

 if (!(desc->flags & IORES_MAP_SYSTEM_RAM))
  desc->flags |= __ioremap_check_ram(res);

 if (!(desc->flags & IORES_MAP_ENCRYPTED))
  desc->flags |= __ioremap_check_encrypted(res);

 return ((desc->flags & (IORES_MAP_SYSTEM_RAM | IORES_MAP_ENCRYPTED)) ==
          (IORES_MAP_SYSTEM_RAM | IORES_MAP_ENCRYPTED));
}
