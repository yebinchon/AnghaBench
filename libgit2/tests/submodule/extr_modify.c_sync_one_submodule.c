
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;


 int GIT_UNUSED (void*) ;
 int git_submodule_sync (int *) ;

__attribute__((used)) static int sync_one_submodule(
 git_submodule *sm, const char *name, void *payload)
{
 GIT_UNUSED(name);
 GIT_UNUSED(payload);
 return git_submodule_sync(sm);
}
