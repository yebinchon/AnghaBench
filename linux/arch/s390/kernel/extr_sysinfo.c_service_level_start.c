
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int down_read (int *) ;
 void* seq_list_start (int *,int ) ;
 int service_level_list ;
 int service_level_sem ;

__attribute__((used)) static void *service_level_start(struct seq_file *m, loff_t *pos)
{
 down_read(&service_level_sem);
 return seq_list_start(&service_level_list, *pos);
}
