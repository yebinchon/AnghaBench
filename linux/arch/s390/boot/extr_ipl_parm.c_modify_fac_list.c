
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_cleared_facilities () ;
 int modify_facility (unsigned long,int) ;
 unsigned long simple_strtoull (char*,char**,int ) ;

__attribute__((used)) static void modify_fac_list(char *str)
{
 unsigned long val, endval;
 char *endp;
 bool clear;

 while (*str) {
  clear = 0;
  if (*str == '!') {
   clear = 1;
   str++;
  }
  val = simple_strtoull(str, &endp, 0);
  if (str == endp)
   break;
  str = endp;
  if (*str == '-') {
   str++;
   endval = simple_strtoull(str, &endp, 0);
   if (str == endp)
    break;
   str = endp;
   while (val <= endval) {
    modify_facility(val, clear);
    val++;
   }
  } else {
   modify_facility(val, clear);
  }
  if (*str != ',')
   break;
  str++;
 }
 check_cleared_facilities();
}
