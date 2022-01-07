
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;


 int GIT_UNUSED (void*) ;
 int fprintf (int ,char*,char const*,char*,unsigned int) ;
 int git_submodule_location (unsigned int*,int *) ;
 char* git_submodule_path (int *) ;
 int stderr ;

__attribute__((used)) static int print_submodules(git_submodule *sm, const char *name, void *p)
{
 unsigned int loc = 0;
 GIT_UNUSED(p);
 git_submodule_location(&loc, sm);
 fprintf(stderr, "# submodule %s (at %s) flags %x\n",
  name, git_submodule_path(sm), loc);
 return 0;
}
