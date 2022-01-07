
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int service_level_sem ;
 int up_read (int *) ;

__attribute__((used)) static void service_level_stop(struct seq_file *m, void *p)
{
 up_read(&service_level_sem);
}
