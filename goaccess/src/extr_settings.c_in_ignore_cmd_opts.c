
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ARRAY_SIZE (int *) ;
 int * ignore_cmd_opts ;
 int * strstr (char const*,int ) ;

__attribute__((used)) static int
in_ignore_cmd_opts (const char *val)
{
  size_t i;
  for (i = 0; i < ARRAY_SIZE (ignore_cmd_opts); i++) {
    if (strstr (val, ignore_cmd_opts[i]) != ((void*)0))
      return 1;
  }
  return 0;
}
