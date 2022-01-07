
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_UNUSED (void*) ;
 int cl_git_pass (int ) ;
 int git_reference_delete (int *) ;
 int git_reference_free (int *) ;

__attribute__((used)) static int delete_cb(git_reference *ref, void *payload)
{
 GIT_UNUSED(payload);

 cl_git_pass(git_reference_delete(ref));
 git_reference_free(ref);

 return 0;
}
