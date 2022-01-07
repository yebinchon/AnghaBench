
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tag ;
typedef int git_oid ;
typedef int git_odb ;


 int GIT_OBJECT_TAG ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_odb_write (int *,int *,int ,int ,int ) ;
 int git_repository_odb__weakptr (int **,int ) ;
 int git_tag_free (int *) ;
 int git_tag_lookup (int **,int ,int *) ;
 int git_tag_message (int *) ;
 int silly_tag ;
 int strlen (int ) ;

void test_object_tag_read__extra_header_fields(void)
{
 git_tag *tag;
 git_odb *odb;
 git_oid id;

 cl_git_pass(git_repository_odb__weakptr(&odb, g_repo));

 cl_git_pass(git_odb_write(&id, odb, silly_tag, strlen(silly_tag), GIT_OBJECT_TAG));
 cl_git_pass(git_tag_lookup(&tag, g_repo, &id));

 cl_assert_equal_s("v1_0_1 release\n", git_tag_message(tag));

 git_tag_free(tag);
}
