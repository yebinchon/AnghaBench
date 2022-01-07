
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uninteresting; } ;
typedef TYPE_1__ git_revwalk__push_options ;
typedef int git_revwalk ;
typedef int git_oid ;


 TYPE_1__ GIT_REVWALK__PUSH_OPTIONS_INIT ;
 int assert (int) ;
 int git_revwalk__push_commit (int *,int const*,TYPE_1__*) ;

int git_revwalk_hide(git_revwalk *walk, const git_oid *oid)
{
 git_revwalk__push_options opts = GIT_REVWALK__PUSH_OPTIONS_INIT;
 assert(walk && oid);

 opts.uninteresting = 1;
 return git_revwalk__push_commit(walk, oid, &opts);
}
