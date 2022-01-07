
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_object ;


 int assert (int ) ;
 int write_tag_annotation (int *,int *,char const*,int const*,int const*,char const*) ;

int git_tag_annotation_create(
 git_oid *oid,
 git_repository *repo,
 const char *tag_name,
 const git_object *target,
 const git_signature *tagger,
 const char *message)
{
 assert(oid && repo && tag_name && target && tagger && message);

 return write_tag_annotation(oid, repo, tag_name, target, tagger, message);
}
