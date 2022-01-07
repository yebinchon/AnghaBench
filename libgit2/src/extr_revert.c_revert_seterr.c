
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_commit ;


 int GIT_ERROR_REVERT ;
 int GIT_OID_HEXSZ ;
 int git_commit_id (int *) ;
 int git_error_set (int ,char const*,char*) ;
 int git_oid_fmt (char*,int ) ;

__attribute__((used)) static int revert_seterr(git_commit *commit, const char *fmt)
{
 char commit_oidstr[GIT_OID_HEXSZ + 1];

 git_oid_fmt(commit_oidstr, git_commit_id(commit));
 commit_oidstr[GIT_OID_HEXSZ] = '\0';

 git_error_set(GIT_ERROR_REVERT, fmt, commit_oidstr);

 return -1;
}
