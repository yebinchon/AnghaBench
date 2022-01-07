
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int of_bus_default_map (int *,int const*,int,int,int) ;

__attribute__((used)) static int of_bus_ambapp_map(u32 *addr, const u32 *range,
        int na, int ns, int pna)
{
 return of_bus_default_map(addr, range, na, ns, pna);
}
