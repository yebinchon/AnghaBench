
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uninteresting; } ;
typedef TYPE_1__ git_revwalk__push_options ;
typedef int git_revwalk ;


 TYPE_1__ GIT_REVWALK__PUSH_OPTIONS_INIT ;
 int assert (int) ;
 int git_revwalk__push_ref (int *,char const*,TYPE_1__*) ;

int git_revwalk_hide_ref(git_revwalk *walk, const char *refname)
{
 git_revwalk__push_options opts = GIT_REVWALK__PUSH_OPTIONS_INIT;
 assert(walk && refname);
 opts.uninteresting = 1;
 return git_revwalk__push_ref(walk, refname, &opts);
}
