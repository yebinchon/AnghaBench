
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *acpi_power_state_string(int state)
{
 switch (state) {
 case 132:
  return "D0";
 case 131:
  return "D1";
 case 130:
  return "D2";
 case 128:
  return "D3hot";
 case 129:
  return "D3cold";
 default:
  return "(unknown)";
 }
}
