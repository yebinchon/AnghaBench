
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef int phys_addr_t ;
typedef int __be32 ;


 int BUG_ON (int) ;
 int cpu_to_be32 (int) ;
 struct device_node* of_find_node_by_name (int *,char*) ;
 int of_translate_address (struct device_node*,int*) ;

__attribute__((used)) static phys_addr_t mvebu_internal_reg_base(void)
{
 struct device_node *np;
 __be32 in_addr[2];

 np = of_find_node_by_name(((void*)0), "internal-regs");
 BUG_ON(!np);






 in_addr[0] = cpu_to_be32(0xf0010000);
 in_addr[1] = 0x0;

 return of_translate_address(np, in_addr);
}
