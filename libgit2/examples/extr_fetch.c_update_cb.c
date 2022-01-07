
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_OID_HEXSZ ;
 int git_oid_fmt (char*,int const*) ;
 scalar_t__ git_oid_is_zero (int const*) ;
 int printf (char*,char*,char const*,...) ;

__attribute__((used)) static int update_cb(const char *refname, const git_oid *a, const git_oid *b, void *data)
{
 char a_str[GIT_OID_HEXSZ+1], b_str[GIT_OID_HEXSZ+1];
 (void)data;

 git_oid_fmt(b_str, b);
 b_str[GIT_OID_HEXSZ] = '\0';

 if (git_oid_is_zero(a)) {
  printf("[new]     %.20s %s\n", b_str, refname);
 } else {
  git_oid_fmt(a_str, a);
  a_str[GIT_OID_HEXSZ] = '\0';
  printf("[updated] %.10s..%.10s %s\n", a_str, b_str, refname);
 }

 return 0;
}
