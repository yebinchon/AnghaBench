
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
intlen (int num)
{
  int l = 1;
  while (num > 9) {
    l++;
    num /= 10;
  }

  return l;
}
