
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_revwalk__push_options ;
struct TYPE_4__ {int repo; } ;
typedef TYPE_1__ git_revwalk ;
typedef int git_oid ;


 scalar_t__ git_reference_name_to_id (int *,int ,char const*) ;
 int git_revwalk__push_commit (TYPE_1__*,int *,int const*) ;

int git_revwalk__push_ref(git_revwalk *walk, const char *refname, const git_revwalk__push_options *opts)
{
 git_oid oid;

 if (git_reference_name_to_id(&oid, walk->repo, refname) < 0)
  return -1;

 return git_revwalk__push_commit(walk, &oid, opts);
}
