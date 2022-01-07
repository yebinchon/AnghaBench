
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_tag_delete (int ,char*) ;

void test_object_tag_write__delete(void)
{

 git_reference *ref_tag;

 cl_git_pass(git_tag_delete(g_repo, "e90810b"));

 cl_git_fail(git_reference_lookup(&ref_tag, g_repo, "refs/tags/e90810b"));

 git_reference_free(ref_tag);
}
