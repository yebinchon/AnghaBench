
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct TYPE_2__ {int size_prop; } ;


 int CACHE_TYPE_UNIFIED ;
 size_t CACHE_TYPE_UNIFIED_D ;
 TYPE_1__* cache_type_info ;
 scalar_t__ of_get_property (struct device_node const*,int ,int *) ;

__attribute__((used)) static int cache_is_unified_d(const struct device_node *np)
{
 return of_get_property(np,
  cache_type_info[CACHE_TYPE_UNIFIED_D].size_prop, ((void*)0)) ?
  CACHE_TYPE_UNIFIED_D : CACHE_TYPE_UNIFIED;
}
