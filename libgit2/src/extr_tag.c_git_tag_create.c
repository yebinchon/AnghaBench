
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_object ;


 int git_tag_create__internal (int *,int *,char const*,int const*,int const*,char const*,int,int) ;

int git_tag_create(
 git_oid *oid,
 git_repository *repo,
 const char *tag_name,
 const git_object *target,
 const git_signature *tagger,
 const char *message,
 int allow_ref_overwrite)
{
 return git_tag_create__internal(oid, repo, tag_name, target, tagger, message, allow_ref_overwrite, 1);
}
