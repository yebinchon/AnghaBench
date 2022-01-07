
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_signature_free (int *) ;
 int git_submodule_free (int *) ;
 int * signature ;
 int * sm ;

void test_stash_submodules__cleanup(void)
{
 git_submodule_free(sm);
 sm = ((void*)0);

 git_signature_free(signature);
 signature = ((void*)0);
}
