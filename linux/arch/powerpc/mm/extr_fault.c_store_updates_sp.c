
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool store_updates_sp(unsigned int inst)
{

 if (((inst >> 16) & 0x1f) != 1)
  return 0;

 switch (inst >> 26) {
 case 128:
 case 133:
 case 129:
 case 130:
 case 131:
  return 1;
 case 132:
  return (inst & 3) == 1;
 case 140:

  switch ((inst >> 1) & 0x3ff) {
  case 138:
  case 134:
  case 139:
  case 135:
  case 136:
  case 137:
   return 1;
  }
 }
 return 0;
}
