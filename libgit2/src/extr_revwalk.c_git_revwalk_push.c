
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_revwalk__push_options ;
typedef int git_revwalk ;
typedef int git_oid ;


 int GIT_REVWALK__PUSH_OPTIONS_INIT ;
 int assert (int) ;
 int git_revwalk__push_commit (int *,int const*,int *) ;

int git_revwalk_push(git_revwalk *walk, const git_oid *oid)
{
 git_revwalk__push_options opts = GIT_REVWALK__PUSH_OPTIONS_INIT;

 assert(walk && oid);

 return git_revwalk__push_commit(walk, oid, &opts);
}
