
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_revwalk__push_options ;
typedef int git_revwalk ;


 int GIT_REVWALK__PUSH_OPTIONS_INIT ;
 int assert (int) ;
 int git_revwalk__push_glob (int *,char const*,int *) ;

int git_revwalk_push_glob(git_revwalk *walk, const char *glob)
{
 git_revwalk__push_options opts = GIT_REVWALK__PUSH_OPTIONS_INIT;
 assert(walk && glob);

 return git_revwalk__push_glob(walk, glob, &opts);
}
