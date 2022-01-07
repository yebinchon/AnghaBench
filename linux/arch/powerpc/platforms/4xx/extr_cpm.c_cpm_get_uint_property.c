
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 unsigned int* of_get_property (struct device_node*,char const*,int*) ;

__attribute__((used)) static int cpm_get_uint_property(struct device_node *np,
     const char *name)
{
 int len;
 const unsigned int *prop = of_get_property(np, name, &len);

 if (prop == ((void*)0) || len < sizeof(u32))
  return 0;

 return *prop;
}
