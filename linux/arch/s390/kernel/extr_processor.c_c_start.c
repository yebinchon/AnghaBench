
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 void* c_update (int *) ;
 int get_online_cpus () ;

__attribute__((used)) static void *c_start(struct seq_file *m, loff_t *pos)
{
 get_online_cpus();
 return c_update(pos);
}
