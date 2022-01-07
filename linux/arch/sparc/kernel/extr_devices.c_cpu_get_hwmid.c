
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle ;


 int ENODEV ;
 int cpu_mid_prop () ;
 int prom_getintdefault (int ,int ,int ) ;

int cpu_get_hwmid(phandle prom_node)
{
 return prom_getintdefault(prom_node, cpu_mid_prop(), -ENODEV);
}
