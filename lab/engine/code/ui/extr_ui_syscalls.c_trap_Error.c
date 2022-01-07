
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_ERROR ;
 int exit (int) ;
 int syscall (int ,char const*) ;

void trap_Error(const char *string)
{
 syscall(UI_ERROR, string);

 exit(1);
}
