
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tag ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;


 scalar_t__ GIT_OBJECT_TAG ;
 int cl_assert (int) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_commit_free (int *) ;
 int git_commit_id (int *) ;
 scalar_t__ git_oid_cmp (int *,int ) ;
 int git_oid_fromstr (int *,int ) ;
 int git_tag_free (int *) ;
 int git_tag_id (int *) ;
 int git_tag_lookup (int **,int ,int *) ;
 int git_tag_name (int *) ;
 int git_tag_target (int **,int *) ;
 scalar_t__ git_tag_target_type (int *) ;
 int tag1_id ;
 int tag2_id ;
 int tagged_commit ;

void test_object_tag_read__parse(void)
{

 git_tag *tag1, *tag2;
 git_commit *commit;
 git_oid id1, id2, id_commit;

 git_oid_fromstr(&id1, tag1_id);
 git_oid_fromstr(&id2, tag2_id);
 git_oid_fromstr(&id_commit, tagged_commit);

 cl_git_pass(git_tag_lookup(&tag1, g_repo, &id1));

 cl_assert_equal_s(git_tag_name(tag1), "test");
 cl_assert(git_tag_target_type(tag1) == GIT_OBJECT_TAG);

 cl_git_pass(git_tag_target((git_object **)&tag2, tag1));
 cl_assert(tag2 != ((void*)0));

 cl_assert(git_oid_cmp(&id2, git_tag_id(tag2)) == 0);

 cl_git_pass(git_tag_target((git_object **)&commit, tag2));
 cl_assert(commit != ((void*)0));

 cl_assert(git_oid_cmp(&id_commit, git_commit_id(commit)) == 0);

 git_tag_free(tag1);
 git_tag_free(tag2);
 git_commit_free(commit);
}
