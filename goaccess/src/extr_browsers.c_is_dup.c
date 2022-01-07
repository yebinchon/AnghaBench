
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
is_dup (char ***list, int len, const char *browser)
{
  int i;

  for (i = 0; i < len; ++i) {
    if (strcmp (browser, list[i][0]) == 0)
      return 1;
  }
  return 0;
}
