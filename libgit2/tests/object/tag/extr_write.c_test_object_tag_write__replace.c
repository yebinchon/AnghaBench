
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;


 int GIT_OBJECT_COMMIT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 scalar_t__ git_oid_cmp (int ,int *) ;
 int git_oid_cpy (int *,int ) ;
 int git_oid_fromstr (int *,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_target (int *) ;
 int git_signature_free (int *) ;
 int git_signature_new (int **,int ,int ,int,int) ;
 int git_tag_create (int *,int ,char*,int *,int *,int ,int) ;
 int tagged_commit ;
 int tagger_email ;
 int tagger_message ;
 int tagger_name ;

void test_object_tag_write__replace(void)
{

 git_oid target_id, tag_id, old_tag_id;
 git_signature *tagger;
 git_reference *ref_tag;
 git_object *target;

 git_oid_fromstr(&target_id, tagged_commit);
 cl_git_pass(git_object_lookup(&target, g_repo, &target_id, GIT_OBJECT_COMMIT));

 cl_git_pass(git_reference_lookup(&ref_tag, g_repo, "refs/tags/e90810b"));
 git_oid_cpy(&old_tag_id, git_reference_target(ref_tag));
 git_reference_free(ref_tag);


 cl_git_pass(git_signature_new(&tagger, tagger_name, tagger_email, 123456789, 60));

 cl_git_pass(git_tag_create(
                              &tag_id,
                              g_repo,
                              "e90810b",
                              target,
                              tagger,
                              tagger_message,
                              1));

 git_object_free(target);
 git_signature_free(tagger);

 cl_git_pass(git_reference_lookup(&ref_tag, g_repo, "refs/tags/e90810b"));
 cl_assert(git_oid_cmp(git_reference_target(ref_tag), &tag_id) == 0);
 cl_assert(git_oid_cmp(git_reference_target(ref_tag), &old_tag_id) != 0);

 git_reference_free(ref_tag);
}
