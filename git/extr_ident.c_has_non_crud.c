
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crud (char const) ;

__attribute__((used)) static int has_non_crud(const char *str)
{
 for (; *str; str++) {
  if (!crud(*str))
   return 1;
 }
 return 0;
}
