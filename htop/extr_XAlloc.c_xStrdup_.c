
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fail () ;
 char* strdup (char const*) ;

char* xStrdup_(const char* str) {
   char* data = strdup(str);
   if (!data) {
      fail();
   }
   return data;
}
