
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
typedef int oid_hex ;
struct TYPE_4__ {char* name; char* email; } ;
typedef TYPE_1__ git_signature ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_commit ;


 int GIT_OID_HEXSZ ;
 int check_error (int,char*) ;
 char* ctime (int *) ;
 TYPE_1__* git_commit_author (int *) ;
 TYPE_1__* git_commit_committer (int *) ;
 int git_commit_free (int *) ;
 int git_commit_id (int *) ;
 int git_commit_lookup (int **,int *,int *) ;
 char* git_commit_message (int *) ;
 int git_commit_parent (int **,int *,unsigned int) ;
 unsigned int git_commit_parentcount (int *) ;
 int git_commit_time (int *) ;
 int git_oid_fmt (char*,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int memset (char*,int ,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void commit_parsing(git_repository *repo)
{
 const git_signature *author, *cmtter;
 git_commit *commit, *parent;
 git_oid oid;
 char oid_hex[GIT_OID_HEXSZ+1];
 const char *message;
 unsigned int parents, p;
 int error;
 time_t time;

 printf("\n*Commit Parsing*\n");

 git_oid_fromstr(&oid, "8496071c1b46c854b31185ea97743be6a8774479");

 error = git_commit_lookup(&commit, repo, &oid);
 check_error(error, "looking up commit");







 message = git_commit_message(commit);
 author = git_commit_author(commit);
 cmtter = git_commit_committer(commit);
 time = git_commit_time(commit);






 printf("Author: %s (%s)\nCommitter: %s (%s)\nDate: %s\nMessage: %s\n",
  author->name, author->email,
  cmtter->name, cmtter->email,
  ctime(&time), message);







 parents = git_commit_parentcount(commit);
 for (p = 0;p < parents;p++) {
  memset(oid_hex, 0, sizeof(oid_hex));

  git_commit_parent(&parent, commit, p);
  git_oid_fmt(oid_hex, git_commit_id(parent));
  printf("Parent: %s\n", oid_hex);
  git_commit_free(parent);
 }

 git_commit_free(commit);
}
