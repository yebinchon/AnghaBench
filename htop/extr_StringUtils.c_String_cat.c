
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 char* xMalloc (int) ;

char* String_cat(const char* s1, const char* s2) {
   int l1 = strlen(s1);
   int l2 = strlen(s2);
   char* out = xMalloc(l1 + l2 + 1);
   strncpy(out, s1, l1);
   strncpy(out+l1, s2, l2+1);
   return out;
}
