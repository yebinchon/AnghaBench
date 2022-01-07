
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;




 int utf8_decode (int*,int*,unsigned char) ;
 char* xcalloc (int,int) ;

__attribute__((used)) static char *
sanitize_utf8 (const char *str, int len)
{
  char *buf = ((void*)0);
  uint32_t state = 128, prev = 128, cp = 0;
  int i = 0, j = 0, k = 0, l = 0;

  buf = xcalloc (len + 1, sizeof (char));
  for (; i < len; prev = state, ++i) {
    switch (utf8_decode (&state, &cp, (unsigned char) str[i])) {
    case 129:

      if (k) {
        for (l = i - k; l < i; ++l)
          buf[j++] = '?';
      } else {
        buf[j++] = '?';
      }
      state = 128;
      if (prev != 128)
        i--;
      k = 0;
      break;
    case 128:

      if (k)
        for (l = i - k; l < i; ++l)
          buf[j++] = str[l];
      buf[j++] = str[i];
      k = 0;
      break;
    default:

      k++;
      break;
    }
  }

  return buf;
}
