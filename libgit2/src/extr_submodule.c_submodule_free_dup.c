
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_submodule_free (void*) ;

__attribute__((used)) static void submodule_free_dup(void *sm)
{
 git_submodule_free(sm);
}
