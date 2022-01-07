
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* find_node_by_prop_value (void const*,char const*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static inline void *find_node_by_prop_value_str(const void *prev,
                                                const char *propname,
                                                const char *propval)
{
 return find_node_by_prop_value(prev, propname, propval,
                                strlen(propval) + 1);
}
