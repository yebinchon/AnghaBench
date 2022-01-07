
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef int __be32 ;


 int EINVAL ;
 unsigned int be32_to_cpu (int const) ;
 unsigned long be64_to_cpu (unsigned long) ;
 int memblock_add (unsigned long,unsigned int) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 int of_node_is_type (struct device_node*,char*) ;

__attribute__((used)) static int pseries_add_mem_node(struct device_node *np)
{
 const __be32 *regs;
 unsigned long base;
 unsigned int lmb_size;
 int ret = -EINVAL;




 if (!of_node_is_type(np, "memory"))
  return 0;




 regs = of_get_property(np, "reg", ((void*)0));
 if (!regs)
  return ret;

 base = be64_to_cpu(*(unsigned long *)regs);
 lmb_size = be32_to_cpu(regs[3]);




 ret = memblock_add(base, lmb_size);
 return (ret < 0) ? -EINVAL : 0;
}
