
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int convert_rating (double x) {
  if (x < 0) { return 0; }
  if (x > 1) { return 2147483647; }
  return (int) (x * 2147483647.0 + 0.5);
}
