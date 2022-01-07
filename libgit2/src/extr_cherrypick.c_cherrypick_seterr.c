
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_commit ;


 int GIT_ERROR_CHERRYPICK ;
 int GIT_OID_HEXSZ ;
 int git_commit_id (int *) ;
 int git_error_set (int ,char const*,int ) ;
 int git_oid_tostr (char*,int,int ) ;

__attribute__((used)) static int cherrypick_seterr(git_commit *commit, const char *fmt)
{
 char commit_oidstr[GIT_OID_HEXSZ + 1];

 git_error_set(GIT_ERROR_CHERRYPICK, fmt,
  git_oid_tostr(commit_oidstr, GIT_OID_HEXSZ + 1, git_commit_id(commit)));

 return -1;
}
