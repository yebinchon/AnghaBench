
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_uncore {int dummy; } ;


 int GFP_KERNEL ;
 int cpu_to_node (unsigned int) ;
 struct amd_uncore* kzalloc_node (int,int ,int ) ;

__attribute__((used)) static struct amd_uncore *amd_uncore_alloc(unsigned int cpu)
{
 return kzalloc_node(sizeof(struct amd_uncore), GFP_KERNEL,
   cpu_to_node(cpu));
}
