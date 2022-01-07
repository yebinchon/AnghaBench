
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int warning (char*) ;

__attribute__((used)) static int divi(long x, long y, long min, long max, int needconst) {
 int cond = y != 0 && !(x == min && y == -1);
 if (!cond && needconst) {
  warning("overflow in constant expression\n");
  cond = 1;
 }
 return cond;


}
