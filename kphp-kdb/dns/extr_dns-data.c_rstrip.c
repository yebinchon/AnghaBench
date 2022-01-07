
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

__attribute__((used)) static int rstrip (char *s, char ch) {
  int l = strlen (s), r = 0;
  while (l > 0 && s[l-1] == ch) {
    s[--l] = 0;
    r++;
  }
  return r;
}
