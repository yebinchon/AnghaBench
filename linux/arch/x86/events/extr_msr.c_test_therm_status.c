
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_FEATURE_DTHERM ;
 int boot_cpu_has (int ) ;

__attribute__((used)) static bool test_therm_status(int idx, void *data)
{
 return boot_cpu_has(X86_FEATURE_DTHERM);
}
