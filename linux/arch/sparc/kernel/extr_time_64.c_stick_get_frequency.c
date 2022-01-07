
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long prom_getintdefault (int ,char*,int ) ;
 int prom_root_node ;

__attribute__((used)) static unsigned long stick_get_frequency(void)
{
 return prom_getintdefault(prom_root_node, "stick-frequency", 0);
}
