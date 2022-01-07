
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *find_next(const char *cp)
{
 while (*cp) {
  if (*cp == '%') {




   if (cp[1] == '(')
    return cp;
   else if (cp[1] == '%')
    cp++;

  }
  cp++;
 }
 return ((void*)0);
}
