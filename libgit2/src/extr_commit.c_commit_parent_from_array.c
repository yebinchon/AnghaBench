
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_commit ;
struct TYPE_2__ {size_t total; scalar_t__ repo; int ** parents; } ;
typedef TYPE_1__ commit_parent_data ;


 int const* git_commit_id (int const*) ;
 scalar_t__ git_commit_owner (int const*) ;

__attribute__((used)) static const git_oid *commit_parent_from_array(size_t curr, void *payload)
{
 commit_parent_data *data = payload;
 const git_commit *commit;
 if (curr >= data->total)
  return ((void*)0);
 commit = data->parents[curr];
 if (git_commit_owner(commit) != data->repo)
  return ((void*)0);
 return git_commit_id(commit);
}
