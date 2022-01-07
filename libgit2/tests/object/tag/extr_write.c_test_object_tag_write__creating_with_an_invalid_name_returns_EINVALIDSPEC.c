
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_oid ;
typedef int git_object ;


 int GIT_EINVALIDSPEC ;
 int GIT_OBJECT_COMMIT ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_oid_fromstr (int *,int ) ;
 int git_signature_free (int *) ;
 int git_signature_new (int **,int ,int ,int,int) ;
 int git_tag_create (int *,int ,char*,int *,int *,int ,int ) ;
 int git_tag_create_lightweight (int *,int ,char*,int *,int ) ;
 int tagged_commit ;
 int tagger_email ;
 int tagger_message ;
 int tagger_name ;

void test_object_tag_write__creating_with_an_invalid_name_returns_EINVALIDSPEC(void)
{
 git_oid target_id, tag_id;
 git_signature *tagger;
 git_object *target;

 git_oid_fromstr(&target_id, tagged_commit);
 cl_git_pass(git_object_lookup(&target, g_repo, &target_id, GIT_OBJECT_COMMIT));

 cl_git_pass(git_signature_new(&tagger, tagger_name, tagger_email, 123456789, 60));

 cl_assert_equal_i(GIT_EINVALIDSPEC,
  git_tag_create(&tag_id, g_repo,
    "Inv@{id", target, tagger, tagger_message, 0)
 );

 cl_assert_equal_i(GIT_EINVALIDSPEC,
  git_tag_create_lightweight(&tag_id, g_repo,
    "Inv@{id", target, 0)
 );

 git_object_free(target);
 git_signature_free(tagger);
}
