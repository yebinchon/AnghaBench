
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ARRAY_SIZE (int **) ;
 char const* _ (int ) ;
 int ** code_type ;
 int * strchr (int ,char const) ;

const char *
verify_status_code_type (const char *str)
{
  size_t i;
  for (i = 0; i < ARRAY_SIZE (code_type); i++)
    if (strchr (code_type[i][0], str[0]) != ((void*)0))
      return _(code_type[i][1]);

  return "Unknown";
}
