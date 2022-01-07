
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_get_property (struct device_node const*,char*,int *) ;

__attribute__((used)) static bool cache_node_is_unified(const struct device_node *np)
{
 return of_get_property(np, "cache-unified", ((void*)0));
}
