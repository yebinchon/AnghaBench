
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int UI_SelectForKey(int key)
{
 switch (key) {
  case 131:
  case 129:
  case 140:
  case 135:
  case 128:
  case 133:
  case 139:
  case 138:
  case 137:
  case 136:
   return 1;

  case 130:
  case 132:
  case 134:
   return -1;
 }


 return 0;
}
