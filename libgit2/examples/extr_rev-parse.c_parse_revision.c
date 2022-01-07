
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct parse_state {int spec; } ;
typedef int str ;
struct TYPE_3__ {int flags; int from; int to; } ;
typedef TYPE_1__ git_revspec ;
typedef int git_repository ;
typedef int git_oid ;


 int GIT_OID_HEXSZ ;
 int GIT_REVPARSE_MERGE_BASE ;
 int GIT_REVPARSE_RANGE ;
 int GIT_REVPARSE_SINGLE ;
 int check_lg2 (int ,char*,int ) ;
 int fatal (char*,int ) ;
 int git_merge_base (int *,int *,int *,int *) ;
 int git_object_free (int ) ;
 int * git_object_id (int ) ;
 int git_oid_tostr (char*,int,int *) ;
 int git_revparse (TYPE_1__*,int *,int ) ;
 int printf (char*,char*) ;

__attribute__((used)) static int parse_revision(git_repository *repo, struct parse_state *ps)
{
 git_revspec rs;
 char str[GIT_OID_HEXSZ + 1];

 check_lg2(git_revparse(&rs, repo, ps->spec), "Could not parse", ps->spec);

 if ((rs.flags & GIT_REVPARSE_SINGLE) != 0) {
  git_oid_tostr(str, sizeof(str), git_object_id(rs.from));
  printf("%s\n", str);
  git_object_free(rs.from);
 }
 else if ((rs.flags & GIT_REVPARSE_RANGE) != 0) {
  git_oid_tostr(str, sizeof(str), git_object_id(rs.to));
  printf("%s\n", str);
  git_object_free(rs.to);

  if ((rs.flags & GIT_REVPARSE_MERGE_BASE) != 0) {
   git_oid base;
   check_lg2(git_merge_base(&base, repo,
      git_object_id(rs.from), git_object_id(rs.to)),
     "Could not find merge base", ps->spec);

   git_oid_tostr(str, sizeof(str), &base);
   printf("%s\n", str);
  }

  git_oid_tostr(str, sizeof(str), git_object_id(rs.from));
  printf("^%s\n", str);
  git_object_free(rs.from);
 }
 else {
  fatal("Invalid results from git_revparse", ps->spec);
 }

 return 0;
}
