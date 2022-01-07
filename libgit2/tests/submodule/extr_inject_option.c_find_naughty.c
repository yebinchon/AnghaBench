
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;


 int GIT_UNUSED (int *) ;
 int git__strcmp (char*,char const*) ;

__attribute__((used)) static int find_naughty(git_submodule *sm, const char *name, void *payload)
{
 int *foundit = (int *) payload;

 GIT_UNUSED(sm);

 if (!git__strcmp("naughty", name))
  *foundit = 1;

 return 0;
}
