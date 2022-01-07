
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_notice (char*) ;

void machine_shutdown(void)
{
 pr_notice("Machine shutdown...\n");
 while (1)
  ;
}
