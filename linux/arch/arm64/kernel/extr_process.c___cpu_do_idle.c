
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dsb (int ) ;
 int sy ;
 int wfi () ;

__attribute__((used)) static void __cpu_do_idle(void)
{
 dsb(sy);
 wfi();
}
