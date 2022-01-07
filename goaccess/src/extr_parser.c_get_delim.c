
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
get_delim (char *dest, const char *p)
{

  if (p[0] == '\0' || p[1] == '\0') {
    dest[0] = '\0';
    return 0;
  }

  dest[0] = *(p + 1);

  if (p[2] == '|' && p[3] != '%' && p[3] != '\0') {
    dest[1] = *(p + 3);
    return 1;
  }
  return 0;
}
