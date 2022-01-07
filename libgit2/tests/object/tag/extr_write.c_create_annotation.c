
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_oid ;
typedef int git_object ;


 int GIT_OBJECT_COMMIT ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_oid_fromstr (int *,int ) ;
 int git_signature_free (int *) ;
 int git_signature_new (int **,int ,int ,int,int) ;
 int git_tag_annotation_create (int *,int ,char const*,int *,int *,char*) ;
 int tagged_commit ;
 int tagger_email ;
 int tagger_name ;

void create_annotation(git_oid *tag_id, const char *name)
{
 git_object *target;
 git_oid target_id;
 git_signature *tagger;

 cl_git_pass(git_signature_new(&tagger, tagger_name, tagger_email, 123456789, 60));

 git_oid_fromstr(&target_id, tagged_commit);
 cl_git_pass(git_object_lookup(&target, g_repo, &target_id, GIT_OBJECT_COMMIT));

 cl_git_pass(git_tag_annotation_create(tag_id, g_repo, name, target, tagger, "boom!"));
 git_object_free(target);
 git_signature_free(tagger);
}
