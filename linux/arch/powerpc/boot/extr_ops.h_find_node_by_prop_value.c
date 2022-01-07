
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* find_node_by_prop_value ) (void const*,char const*,char const*,int) ;} ;


 TYPE_1__ dt_ops ;
 void* stub1 (void const*,char const*,char const*,int) ;

__attribute__((used)) static inline void *find_node_by_prop_value(const void *prev,
                                            const char *propname,
                                            const char *propval, int proplen)
{
 if (dt_ops.find_node_by_prop_value)
  return dt_ops.find_node_by_prop_value(prev, propname,
                                        propval, proplen);

 return ((void*)0);
}
