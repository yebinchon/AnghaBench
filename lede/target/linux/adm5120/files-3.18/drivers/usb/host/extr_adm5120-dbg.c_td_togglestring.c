
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int TD_T ;




__attribute__((used)) static inline char *td_togglestring(u32 info)
{
 switch (info & TD_T) {
 case 129:
  return "DATA0";
 case 128:
  return "DATA1";
 case 130:
  return "CARRY";
 }
 return "?TOGGLE";
}
