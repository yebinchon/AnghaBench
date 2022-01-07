
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline char *ed_statestring(int state)
{
 switch (state) {
 case 130:
  return "IDLE";
 case 128:
  return "UNLINK";
 case 129:
  return "OPER";
 }
 return "?STATE";
}
