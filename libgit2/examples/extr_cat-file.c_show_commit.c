
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oidstr ;
typedef int git_commit ;


 int GIT_OID_HEXSZ ;
 int git_commit_author (int const*) ;
 int git_commit_committer (int const*) ;
 char* git_commit_message (int const*) ;
 int git_commit_parent_id (int const*,unsigned int) ;
 scalar_t__ git_commit_parentcount (int const*) ;
 int git_commit_tree_id (int const*) ;
 int git_oid_tostr (char*,int,int ) ;
 int print_signature (char*,int ) ;
 int printf (char*,char*) ;

__attribute__((used)) static void show_commit(const git_commit *commit)
{
 unsigned int i, max_i;
 char oidstr[GIT_OID_HEXSZ + 1];

 git_oid_tostr(oidstr, sizeof(oidstr), git_commit_tree_id(commit));
 printf("tree %s\n", oidstr);

 max_i = (unsigned int)git_commit_parentcount(commit);
 for (i = 0; i < max_i; ++i) {
  git_oid_tostr(oidstr, sizeof(oidstr), git_commit_parent_id(commit, i));
  printf("parent %s\n", oidstr);
 }

 print_signature("author", git_commit_author(commit));
 print_signature("committer", git_commit_committer(commit));

 if (git_commit_message(commit))
  printf("\n%s\n", git_commit_message(commit));
}
