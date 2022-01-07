
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_2__ {int parent_ids; } ;
typedef TYPE_1__ git_commit ;


 int const* git_array_get (int ,size_t) ;
 size_t git_array_size (int ) ;

__attribute__((used)) static const git_oid *commit_parent_for_amend(size_t curr, void *payload)
{
 const git_commit *commit_to_amend = payload;
 if (curr >= git_array_size(commit_to_amend->parent_ids))
  return ((void*)0);
 return git_array_get(commit_to_amend->parent_ids, curr);
}
