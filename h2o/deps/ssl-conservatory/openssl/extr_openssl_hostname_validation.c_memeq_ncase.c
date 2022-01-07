
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ lowercase (int ) ;

__attribute__((used)) static int memeq_ncase(const char *x, const char *y, size_t l) {
 if (l == 0)
  return 1;
 do {
  if (lowercase(*x++) != lowercase(*y++))
   return 0;
 } while (--l != 0);
 return 1;
}
