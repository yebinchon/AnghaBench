
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int num_digits(int val)
{
 int m = 10;
 int d = 1;

 if (val < 0) {
  d++;
  val = -val;
 }

 while (val >= m) {
  m *= 10;
  d++;
 }
 return d;
}
