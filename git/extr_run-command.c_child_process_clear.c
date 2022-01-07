
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int env_array; int args; } ;


 int argv_array_clear (int *) ;

void child_process_clear(struct child_process *child)
{
 argv_array_clear(&child->args);
 argv_array_clear(&child->env_array);
}
