
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_not_whitespace (char) ;

char *eat_not_whitespace (char *s) {
  while (is_not_whitespace (*s)) {
    s++;
  }
  return s;
}
