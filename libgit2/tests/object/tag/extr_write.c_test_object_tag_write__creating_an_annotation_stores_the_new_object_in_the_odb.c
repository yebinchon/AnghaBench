
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tag ;
typedef int git_oid ;


 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int create_annotation (int *,char*) ;
 int g_repo ;
 int git_tag_free (int *) ;
 int git_tag_lookup (int **,int ,int *) ;
 int git_tag_name (int *) ;

void test_object_tag_write__creating_an_annotation_stores_the_new_object_in_the_odb(void)
{
 git_oid tag_id;
 git_tag *tag;

 create_annotation(&tag_id, "new_tag");

 cl_git_pass(git_tag_lookup(&tag, g_repo, &tag_id));
 cl_assert_equal_s("new_tag", git_tag_name(tag));

 git_tag_free(tag);
}
