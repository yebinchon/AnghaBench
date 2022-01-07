
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool pmic_thermal_is_temp(int address)
{
 return (address <= 0x3c) && !(address % 12);
}
