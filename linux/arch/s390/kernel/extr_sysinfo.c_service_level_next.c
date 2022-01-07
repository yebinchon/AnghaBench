
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 void* seq_list_next (void*,int *,int *) ;
 int service_level_list ;

__attribute__((used)) static void *service_level_next(struct seq_file *m, void *p, loff_t *pos)
{
 return seq_list_next(p, &service_level_list, pos);
}
