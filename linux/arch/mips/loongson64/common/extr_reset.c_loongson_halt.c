
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_wait () ;
 int pr_notice (char*) ;

__attribute__((used)) static void loongson_halt(void)
{
 pr_notice("\n\n** You can safely turn off the power now **\n\n");
 while (1) {
  if (cpu_wait)
   cpu_wait();
 }
}
