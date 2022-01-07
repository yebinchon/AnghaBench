
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int task_pid_nr (int ) ;

int get_current_pid(void)
{
 return task_pid_nr(current);
}
