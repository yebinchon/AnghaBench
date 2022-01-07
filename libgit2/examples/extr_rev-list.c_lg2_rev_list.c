
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_revwalk ;
typedef int git_repository ;
typedef int git_oid ;


 int GIT_OID_HEXSZ ;
 int check_lg2 (int ,char*,int *) ;
 int git_oid_fmt (char*,int *) ;
 int git_revwalk_new (int **,int *) ;
 int git_revwalk_next (int *,int *) ;
 int printf (char*,char*) ;
 int revwalk_parseopts (int *,int *,int,char**) ;

int lg2_rev_list(git_repository *repo, int argc, char **argv)
{
 git_revwalk *walk;
 git_oid oid;
 char buf[GIT_OID_HEXSZ+1];

 check_lg2(git_revwalk_new(&walk, repo), "allocating revwalk", ((void*)0));
 check_lg2(revwalk_parseopts(repo, walk, argc-1, argv+1), "parsing options", ((void*)0));

 while (!git_revwalk_next(&oid, walk)) {
  git_oid_fmt(buf, &oid);
  buf[GIT_OID_HEXSZ] = '\0';
  printf("%s\n", buf);
 }

 return 0;
}
