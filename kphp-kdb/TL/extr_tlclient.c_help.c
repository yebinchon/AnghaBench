
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int compiler ;
 int stdout ;
 int tl_function_help (int *,char*,int ) ;

int help (char *s) {
  return tl_function_help (&compiler, s, stdout);
}
