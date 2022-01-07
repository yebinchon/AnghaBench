
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int TD_DP ;




__attribute__((used)) static inline char *td_pidstring(u32 info)
{
 switch (info & TD_DP) {
 case 128:
  return "SETUP";
 case 130:
  return "IN";
 case 129:
  return "OUT";
 }
 return "?PID";
}
