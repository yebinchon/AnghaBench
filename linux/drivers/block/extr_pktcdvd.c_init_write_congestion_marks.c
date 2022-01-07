
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int max (int,int) ;
 int min (int,int) ;

__attribute__((used)) static void init_write_congestion_marks(int* lo, int* hi)
{
 if (*hi > 0) {
  *hi = max(*hi, 500);
  *hi = min(*hi, 1000000);
  if (*lo <= 0)
   *lo = *hi - 100;
  else {
   *lo = min(*lo, *hi - 100);
   *lo = max(*lo, 100);
  }
 } else {
  *hi = -1;
  *lo = -1;
 }
}
