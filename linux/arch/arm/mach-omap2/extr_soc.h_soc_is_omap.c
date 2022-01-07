
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ omap_rev () ;

__attribute__((used)) static inline int soc_is_omap(void)
{
 return omap_rev() != 0;
}
