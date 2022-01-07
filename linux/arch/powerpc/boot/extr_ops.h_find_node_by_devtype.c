
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* find_node_by_prop_value_str (void const*,char*,char const*) ;

__attribute__((used)) static inline void *find_node_by_devtype(const void *prev,
                                         const char *type)
{
 return find_node_by_prop_value_str(prev, "device_type", type);
}
