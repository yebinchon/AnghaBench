
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;

__attribute__((used)) static void approximate(int base, int target, int *prediv,
   int *postdiv, int *mul)
{
 int i, j, k, freq, res = target;
 for (i = 1; i <= 16; i++)
  for (j = 1; j <= 32; j++)
   for (k = 1; k <= 32; k++) {
    freq = abs(base / j * i / k - target);
    if (freq < res) {
     res = freq;
     *mul = i;
     *prediv = j;
     *postdiv = k;
    }
   }
}
