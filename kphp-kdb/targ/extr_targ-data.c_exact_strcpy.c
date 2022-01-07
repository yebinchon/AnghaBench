
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static void exact_strcpy (char *dest, const char *src, int len) {
  memcpy (dest, src, len);
  register int i;
  for (i = 0; i < len; i++) {
    if (!dest[i]) {
      dest[i] = '\n';
    }
  }
  dest[i] = 0;
}
