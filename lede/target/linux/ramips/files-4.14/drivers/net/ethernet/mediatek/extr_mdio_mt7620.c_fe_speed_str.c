
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char *fe_speed_str(int speed)
{
 switch (speed) {
 case 2:
 case 128:
  return "1000";
 case 1:
 case 129:
  return "100";
 case 0:
 case 130:
  return "10";
 }

 return "? ";
}
