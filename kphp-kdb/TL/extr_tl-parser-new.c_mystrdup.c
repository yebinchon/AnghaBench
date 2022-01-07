
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 char* zmalloc (int) ;

char *mystrdup (const char *a, int len) {
  char *z = zmalloc (len + 1);
  memcpy (z, a, len);
  z[len] = 0;
  return z;
}
