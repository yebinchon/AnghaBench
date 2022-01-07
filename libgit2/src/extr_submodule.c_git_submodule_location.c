
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;


 int GIT_SUBMODULE_IGNORE_ALL ;
 int assert (int) ;
 int git_submodule__status (unsigned int*,int *,int *,int *,int *,int ) ;

int git_submodule_location(unsigned int *location, git_submodule *sm)
{
 assert(location && sm);

 return git_submodule__status(
  location, ((void*)0), ((void*)0), ((void*)0), sm, GIT_SUBMODULE_IGNORE_ALL);
}
