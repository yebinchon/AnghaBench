
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_NAME_LEN ;
 int is_letter (char) ;
 scalar_t__ strlen (char*) ;

int is_name (char *s) {
  if (s == ((void*)0) || *s == 0 || strlen (s) >= MAX_NAME_LEN) {
    return 0;
  }
  while (*s) {
    if (!is_letter (*s)) {
      return 0;
    }
    s++;
  }
  return 1;
}
