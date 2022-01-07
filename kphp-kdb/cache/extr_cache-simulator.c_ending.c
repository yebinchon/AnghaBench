
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *ending (int x) {
  x %= 100;
  if (x / 10 == 1) {
    return "th";
  }
  if (x % 10 == 1) {
    return "st";
  }
  if (x % 10 == 2) {
    return "nd";
  }
  if (x % 10 == 3) {
    return "rd";
  }
  return "th";
}
