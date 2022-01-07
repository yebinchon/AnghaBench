
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int __pa_symbol (int ) ;
 int cpu_resume ;
 int tango_suspend (int ) ;

__attribute__((used)) static int tango_pm_powerdown(unsigned long arg)
{
 tango_suspend(__pa_symbol(cpu_resume));

 return -EIO;
}
