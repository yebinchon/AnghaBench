
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_UNUSED (void*) ;
 int git__free (void*) ;

__attribute__((used)) static void use_git_free(void *opaq, void *ptr)
{
 GIT_UNUSED(opaq);
 git__free(ptr);
}
