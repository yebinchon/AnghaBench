
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_revwalk__push_options ;
typedef int git_revwalk ;


 int GIT_HEAD_FILE ;
 int GIT_REVWALK__PUSH_OPTIONS_INIT ;
 int assert (int *) ;
 int git_revwalk__push_ref (int *,int ,int *) ;

int git_revwalk_push_head(git_revwalk *walk)
{
 git_revwalk__push_options opts = GIT_REVWALK__PUSH_OPTIONS_INIT;
 assert(walk);

 return git_revwalk__push_ref(walk, GIT_HEAD_FILE, &opts);
}
