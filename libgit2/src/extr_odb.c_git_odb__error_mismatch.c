
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int expected_oid ;
typedef int actual_oid ;


 int GIT_EMISMATCH ;
 int GIT_ERROR_ODB ;
 int GIT_OID_HEXSZ ;
 int git_error_set (int ,char*,char*,char*) ;
 int git_oid_tostr (char*,int,int const*) ;

int git_odb__error_mismatch(const git_oid *expected, const git_oid *actual)
{
 char expected_oid[GIT_OID_HEXSZ + 1], actual_oid[GIT_OID_HEXSZ + 1];

 git_oid_tostr(expected_oid, sizeof(expected_oid), expected);
 git_oid_tostr(actual_oid, sizeof(actual_oid), actual);

 git_error_set(GIT_ERROR_ODB, "object hash mismatch - expected %s but got %s",
  expected_oid, actual_oid);

 return GIT_EMISMATCH;
}
