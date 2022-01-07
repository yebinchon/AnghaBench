
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;
typedef int git_object_t ;
typedef int git_object ;


 int GIT_OID_HEXSZ ;
 int git_object_lookup_prefix (int **,int *,int const*,int ,int ) ;

int git_object_lookup(git_object **object_out, git_repository *repo, const git_oid *id, git_object_t type) {
 return git_object_lookup_prefix(object_out, repo, id, GIT_OID_HEXSZ, type);
}
