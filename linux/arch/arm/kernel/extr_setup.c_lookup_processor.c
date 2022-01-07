
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct proc_info_list {int dummy; } ;


 struct proc_info_list* lookup_processor_type (int ) ;
 int pr_err (char*,int ,int ) ;
 int smp_processor_id () ;

struct proc_info_list *lookup_processor(u32 midr)
{
 struct proc_info_list *list = lookup_processor_type(midr);

 if (!list) {
  pr_err("CPU%u: configuration botched (ID %08x), CPU halted\n",
         smp_processor_id(), midr);
  while (1)
                                                              ;
 }

 return list;
}
