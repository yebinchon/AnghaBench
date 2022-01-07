
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static const char *state_to_str(u8 state)
{
 switch (state) {
 case 129:
  return "INVALID";
 case 130:
  return "INIT";
 case 132:
  return "BOUND";
 case 128:
  return "READY";
 case 131:
  return "CONNECTED";
 default:
  return "<UNKNOWN>";
 }
}
