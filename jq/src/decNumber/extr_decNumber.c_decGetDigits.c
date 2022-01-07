
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uInt ;
typedef int Unit ;
typedef int LI ;
typedef int Int ;


 int DECDPUN ;
 int* powers ;
 int printf (char*,int ) ;

__attribute__((used)) static Int decGetDigits(Unit *uar, Int len) {
  Unit *up=uar+(len-1);
  Int digits=(len-1)*DECDPUN+1;
  for (; up>=uar; up--) {
    if (*up==0) {
      if (digits==1) break;
      digits-=DECDPUN;
      continue;}
    break;
    }
  return digits;
  }
