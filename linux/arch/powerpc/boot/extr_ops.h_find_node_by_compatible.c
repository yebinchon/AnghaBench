
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* find_node_by_compatible ) (void const*,char const*) ;} ;


 TYPE_1__ dt_ops ;
 void* stub1 (void const*,char const*) ;

__attribute__((used)) static inline void *find_node_by_compatible(const void *prev,
                                            const char *compat)
{
 if (dt_ops.find_node_by_compatible)
  return dt_ops.find_node_by_compatible(prev, compat);

 return ((void*)0);
}
