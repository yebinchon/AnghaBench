
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 char* zzmalloc (int) ;

char *vv_strdup (const char *s, int len) {
  char *r = zzmalloc (len + 1);
  memcpy (r, s, len);
  r[len] = 0;
  return r;
}
