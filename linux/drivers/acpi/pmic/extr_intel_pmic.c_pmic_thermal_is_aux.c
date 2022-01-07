
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool pmic_thermal_is_aux(int address)
{
 return (address >= 4 && address <= 0x40 && !((address - 4) % 12)) ||
        (address >= 8 && address <= 0x44 && !((address - 8) % 12));
}
