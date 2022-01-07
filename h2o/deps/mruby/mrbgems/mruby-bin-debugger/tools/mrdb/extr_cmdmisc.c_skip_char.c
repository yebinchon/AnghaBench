
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_bool ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static mrb_bool
skip_char(char **sp, char c)
{
  if (*sp != ((void*)0) && **sp == c) {
    ++*sp;
    return TRUE;
  }
  return FALSE;
}
