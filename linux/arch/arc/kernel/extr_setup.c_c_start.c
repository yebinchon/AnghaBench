
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 void* cpu_to_ptr (scalar_t__) ;
 scalar_t__ nr_cpu_ids ;

__attribute__((used)) static void *c_start(struct seq_file *m, loff_t *pos)
{






 return *pos < nr_cpu_ids ? cpu_to_ptr(*pos) : ((void*)0);
}
