
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ARRAY_SIZE (int **) ;
 char const* _ (int ) ;
 int ** codes ;
 int * strstr (char*,int ) ;

const char *
verify_status_code (char *str)
{
  size_t i;
  for (i = 0; i < ARRAY_SIZE (codes); i++)
    if (strstr (str, codes[i][0]) != ((void*)0))
      return _(codes[i][1]);

  return "Unknown";
}
