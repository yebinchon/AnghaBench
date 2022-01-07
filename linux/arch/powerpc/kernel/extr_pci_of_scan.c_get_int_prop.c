
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int * of_get_property (struct device_node*,char const*,int*) ;
 int of_read_number (int const*,int) ;

__attribute__((used)) static u32 get_int_prop(struct device_node *np, const char *name, u32 def)
{
 const __be32 *prop;
 int len;

 prop = of_get_property(np, name, &len);
 if (prop && len >= 4)
  return of_read_number(prop, 1);
 return def;
}
