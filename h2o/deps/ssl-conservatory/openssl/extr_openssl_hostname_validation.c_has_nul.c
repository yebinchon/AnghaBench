
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int has_nul(const char *s, size_t l) {
 if (l == 0)
  return 0;
 do {
  if (*s++ == '\0')
   return 1;
 } while (--l != 0);
 return 0;
}
