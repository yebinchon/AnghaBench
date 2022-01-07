
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int commits; } ;
typedef TYPE_1__ git_revwalk ;
typedef int git_oid ;
struct TYPE_10__ {int oid; } ;
typedef TYPE_2__ git_commit_list_node ;


 TYPE_2__* git_commit_list_alloc_node (TYPE_1__*) ;
 int git_oid_cpy (int *,int const*) ;
 TYPE_2__* git_oidmap_get (int ,int const*) ;
 scalar_t__ git_oidmap_set (int ,int *,TYPE_2__*) ;

git_commit_list_node *git_revwalk__commit_lookup(
 git_revwalk *walk, const git_oid *oid)
{
 git_commit_list_node *commit;


 if ((commit = git_oidmap_get(walk->commits, oid)) != ((void*)0))
  return commit;

 commit = git_commit_list_alloc_node(walk);
 if (commit == ((void*)0))
  return ((void*)0);

 git_oid_cpy(&commit->oid, oid);

 if ((git_oidmap_set(walk->commits, &commit->oid, commit)) < 0)
  return ((void*)0);

 return commit;
}
