
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B16210 (char const) ;
 int isxdigit (char const) ;

__attribute__((used)) static void
decode_hex (char *url, char *out)
{
  char *ptr;
  const char *c;

  for (c = url, ptr = out; *c; c++) {
    if (*c != '%' || !isxdigit (c[1]) || !isxdigit (c[2])) {
      *ptr++ = *c;
    } else {
      *ptr++ = (B16210 (c[1]) * 16) + (B16210 (c[2]));
      c += 2;
    }
  }
  *ptr = 0;
}
