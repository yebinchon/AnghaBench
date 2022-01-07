
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int cl_git_fail (int ) ;
 int g_repo ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,int ) ;
 int non_existing_tag_ref_name ;

void test_refs_read__nonexisting_tag(void)
{

 git_reference *reference;

 cl_git_fail(git_reference_lookup(&reference, g_repo, non_existing_tag_ref_name));

 git_reference_free(reference);
}
