
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_8__ {int repo; } ;
struct TYPE_9__ {TYPE_1__ object; } ;
typedef TYPE_2__ git_commit ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_INVALID ;
 int assert (TYPE_2__ const*) ;
 int git_commit_lookup (TYPE_2__**,int ,int const*) ;
 int * git_commit_parent_id (TYPE_2__ const*,unsigned int) ;
 int git_error_set (int ,char*,unsigned int) ;

int git_commit_parent(
 git_commit **parent, const git_commit *commit, unsigned int n)
{
 const git_oid *parent_id;
 assert(commit);

 parent_id = git_commit_parent_id(commit, n);
 if (parent_id == ((void*)0)) {
  git_error_set(GIT_ERROR_INVALID, "parent %u does not exist", n);
  return GIT_ENOTFOUND;
 }

 return git_commit_lookup(parent, commit->object.repo, parent_id);
}
