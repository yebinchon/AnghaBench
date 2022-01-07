
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_tag ;
struct TYPE_7__ {int time; int offset; } ;
struct TYPE_8__ {TYPE_1__ when; int email; int name; } ;
typedef TYPE_2__ git_signature ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;


 int GIT_OBJECT_COMMIT ;
 int cl_assert (int) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 scalar_t__ git_oid_cmp (int ,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int git_reference_delete (int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_target (int *) ;
 int git_signature_free (TYPE_2__*) ;
 int git_signature_new (TYPE_2__**,int ,int ,int,int) ;
 int git_tag_create (int *,int ,char*,int *,TYPE_2__*,int ,int ) ;
 int git_tag_free (int *) ;
 int git_tag_lookup (int **,int ,int *) ;
 int git_tag_message (int *) ;
 TYPE_2__* git_tag_tagger (int *) ;
 int git_tag_target_id (int *) ;
 int tagged_commit ;
 int tagger_email ;
 int tagger_message ;
 int tagger_name ;

void test_object_tag_write__basic(void)
{

 git_tag *tag;
 git_oid target_id, tag_id;
 git_signature *tagger;
 const git_signature *tagger1;
 git_reference *ref_tag;
 git_object *target;

 git_oid_fromstr(&target_id, tagged_commit);
 cl_git_pass(git_object_lookup(&target, g_repo, &target_id, GIT_OBJECT_COMMIT));


 cl_git_pass(git_signature_new(&tagger, tagger_name, tagger_email, 123456789, 60));

 cl_git_pass(
  git_tag_create(&tag_id, g_repo,
    "the-tag", target, tagger, tagger_message, 0)
 );

 git_object_free(target);
 git_signature_free(tagger);

 cl_git_pass(git_tag_lookup(&tag, g_repo, &tag_id));
 cl_assert(git_oid_cmp(git_tag_target_id(tag), &target_id) == 0);


 tagger1 = git_tag_tagger(tag);
 cl_assert(tagger1 != ((void*)0));
 cl_assert_equal_s(tagger1->name, tagger_name);
 cl_assert_equal_s(tagger1->email, tagger_email);
 cl_assert(tagger1->when.time == 123456789);
 cl_assert(tagger1->when.offset == 60);

 cl_assert_equal_s(git_tag_message(tag), tagger_message);

 cl_git_pass(git_reference_lookup(&ref_tag, g_repo, "refs/tags/the-tag"));
 cl_assert(git_oid_cmp(git_reference_target(ref_tag), &tag_id) == 0);
 cl_git_pass(git_reference_delete(ref_tag));
 git_reference_free(ref_tag);

 git_tag_free(tag);
}
