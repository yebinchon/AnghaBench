
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 char* zzemalloc (int) ;

char *vv_estrdup (const char *s, int len) {
  char *r = zzemalloc (len + 1);
  memcpy (r, s, len);
  r[len] = 0;
  return r;
}
