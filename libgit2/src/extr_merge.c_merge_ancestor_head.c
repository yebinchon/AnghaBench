
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_oid ;
struct TYPE_7__ {int commit; } ;
typedef TYPE_1__ git_annotated_commit ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 int assert (int ) ;
 int * git__calloc (size_t,int) ;
 int git__free (int *) ;
 int git_annotated_commit_id (TYPE_1__ const*) ;
 int git_annotated_commit_lookup (TYPE_1__**,int *,int *) ;
 int git_commit_id (int ) ;
 int git_merge_base_many (int *,int *,size_t,int *) ;
 int git_oid_cpy (int *,int ) ;

__attribute__((used)) static int merge_ancestor_head(
 git_annotated_commit **ancestor_head,
 git_repository *repo,
 const git_annotated_commit *our_head,
 const git_annotated_commit **their_heads,
 size_t their_heads_len)
{
 git_oid *oids, ancestor_oid;
 size_t i, alloc_len;
 int error = 0;

 assert(repo && our_head && their_heads);

 GIT_ERROR_CHECK_ALLOC_ADD(&alloc_len, their_heads_len, 1);
 oids = git__calloc(alloc_len, sizeof(git_oid));
 GIT_ERROR_CHECK_ALLOC(oids);

 git_oid_cpy(&oids[0], git_commit_id(our_head->commit));

 for (i = 0; i < their_heads_len; i++)
  git_oid_cpy(&oids[i + 1], git_annotated_commit_id(their_heads[i]));

 if ((error = git_merge_base_many(&ancestor_oid, repo, their_heads_len + 1, oids)) < 0)
  goto on_error;

 error = git_annotated_commit_lookup(ancestor_head, repo, &ancestor_oid);

on_error:
 git__free(oids);
 return error;
}
