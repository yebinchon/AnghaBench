
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_2__ {int parent_ids; } ;
typedef TYPE_1__ git_commit ;


 int const* git_array_get (int ,size_t) ;

__attribute__((used)) static const git_oid *commit_parent_from_commit(size_t n, void *payload)
{
 const git_commit *commit = (const git_commit *) payload;

 return git_array_get(commit->parent_ids, n);

}
