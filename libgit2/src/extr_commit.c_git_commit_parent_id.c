
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_4__ {int parent_ids; } ;
typedef TYPE_1__ git_commit ;


 int assert (TYPE_1__ const*) ;
 int const* git_array_get (int ,unsigned int) ;

const git_oid *git_commit_parent_id(
 const git_commit *commit, unsigned int n)
{
 assert(commit);

 return git_array_get(commit->parent_ids, n);
}
