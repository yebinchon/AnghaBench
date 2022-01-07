
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int of_property_read_u32 (struct device_node*,char const*,int *) ;

__attribute__((used)) static inline u32 fcpu(struct device_node *cpu, const char *n)
{
 u32 val = 0;

 of_property_read_u32(cpu, n, &val);

 return val;
}
