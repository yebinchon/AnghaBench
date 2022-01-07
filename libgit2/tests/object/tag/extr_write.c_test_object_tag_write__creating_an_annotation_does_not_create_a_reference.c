
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;


 int GIT_ENOTFOUND ;
 int cl_git_fail_with (int ,int ) ;
 int create_annotation (int *,char*) ;
 int g_repo ;
 int git_reference_lookup (int **,int ,char*) ;

void test_object_tag_write__creating_an_annotation_does_not_create_a_reference(void)
{
 git_oid tag_id;
 git_reference *tag_ref;

 create_annotation(&tag_id, "new_tag");
 cl_git_fail_with(git_reference_lookup(&tag_ref, g_repo, "refs/tags/new_tag"), GIT_ENOTFOUND);
}
