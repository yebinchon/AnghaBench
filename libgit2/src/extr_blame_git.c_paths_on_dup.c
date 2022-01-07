
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_UNUSED (void**) ;
 int git__free (void*) ;

__attribute__((used)) static int paths_on_dup(void **old, void *new)
{
 GIT_UNUSED(old);
 git__free(new);
 return -1;
}
