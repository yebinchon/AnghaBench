
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int igcd (int a, int b) {
  int c;
  if (a < b) {
    c = a;
    a = b;
    b = c;
  }
  while (b) {
    c = a % b;
    a = b;
    b = c;
  }
  return a;
}
