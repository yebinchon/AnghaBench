
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int endswith (const char *s, const char *suffix, int suffix_len) {
  int l = strlen (s);
  return l >= suffix_len && !strcmp (s + (l - suffix_len), suffix);
}
