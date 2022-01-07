
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int strncpy (void*,char const*,size_t) ;

void
strncpy_cond(void *dst, const char *src, bool cond) {
 if (cond) {





  size_t n = cond ? strlen(src) + 1 : 0;
  strncpy(dst, src, n);
 }
}
