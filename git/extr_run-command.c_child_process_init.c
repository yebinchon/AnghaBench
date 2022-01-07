
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int env_array; int args; } ;


 int argv_array_init (int *) ;
 int memset (struct child_process*,int ,int) ;

void child_process_init(struct child_process *child)
{
 memset(child, 0, sizeof(*child));
 argv_array_init(&child->args);
 argv_array_init(&child->env_array);
}
