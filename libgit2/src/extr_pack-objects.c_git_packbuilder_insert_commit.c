
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int repo; } ;
typedef TYPE_1__ git_packbuilder ;
typedef int git_oid ;
typedef int git_commit ;


 int git_commit_free (int *) ;
 scalar_t__ git_commit_lookup (int **,int ,int const*) ;
 int git_commit_tree_id (int *) ;
 scalar_t__ git_packbuilder_insert (TYPE_1__*,int const*,int *) ;
 scalar_t__ git_packbuilder_insert_tree (TYPE_1__*,int ) ;

int git_packbuilder_insert_commit(git_packbuilder *pb, const git_oid *oid)
{
 git_commit *commit;

 if (git_commit_lookup(&commit, pb->repo, oid) < 0 ||
  git_packbuilder_insert(pb, oid, ((void*)0)) < 0)
  return -1;

 if (git_packbuilder_insert_tree(pb, git_commit_tree_id(commit)) < 0)
  return -1;

 git_commit_free(commit);
 return 0;
}
