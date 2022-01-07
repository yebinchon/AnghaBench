
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;


 char* git_submodule_name (int *) ;
 char* git_submodule_path (int *) ;
 int printf (char*,...) ;

__attribute__((used)) static int print_submod(git_submodule *sm, const char *name, void *payload)
{
 int *count = payload;
 (void)name;

 if (*count == 0)
  printf("# Submodules\n");
 (*count)++;

 printf("# - submodule '%s' at %s\n",
  git_submodule_name(sm), git_submodule_path(sm));

 return 0;
}
