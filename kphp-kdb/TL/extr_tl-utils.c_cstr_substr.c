
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const* const,int) ;
 char* tl_zzmalloc (int) ;

char *cstr_substr (const char *const input, int start, int end) {
  int l = end - start;
  char *s = tl_zzmalloc (l + 1);
  memcpy (s, input + start, l);
  s[l] = 0;
  return s;
}
