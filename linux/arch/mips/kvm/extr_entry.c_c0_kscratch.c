
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int boot_cpu_type () ;

__attribute__((used)) static int c0_kscratch(void)
{
 switch (boot_cpu_type()) {
 case 129:
 case 128:
  return 22;
 default:
  return 31;
 }
}
