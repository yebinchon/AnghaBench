
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;

inline int String_eq(const char* s1, const char* s2) {
   if (s1 == ((void*)0) || s2 == ((void*)0)) {
      if (s1 == ((void*)0) && s2 == ((void*)0))
         return 1;
      else
         return 0;
   }
   return (strcmp(s1, s2) == 0);
}
