
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ tolower (char) ;

__attribute__((used)) static int ignore_case_equal_strings (char *x, char *y, int len) {
  while (--len >= 0) {
    if (tolower (*x) != tolower (*y)) { return 0; }
    x++;
    y++;
  }
  return 1;
}
