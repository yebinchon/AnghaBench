
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char*) ;

__attribute__((used)) static int parse_bool (char *s) {
  if (!strcmp (s, "on")) {
    return 1;
  }
  if (!strcmp (s, "off")) {
    return 0;
  }
  return -1;
}
