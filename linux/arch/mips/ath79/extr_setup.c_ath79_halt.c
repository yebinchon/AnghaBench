
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_wait () ;

__attribute__((used)) static void ath79_halt(void)
{
 while (1)
  cpu_wait();
}
