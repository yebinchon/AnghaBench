
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_ODB ;
 int GIT_OID_HEXSZ ;
 int git_error_set (int ,char*,char const*,...) ;
 int git_oid_tostr (char*,size_t,int const*) ;

int git_odb__error_notfound(
 const char *message, const git_oid *oid, size_t oid_len)
{
 if (oid != ((void*)0)) {
  char oid_str[GIT_OID_HEXSZ + 1];
  git_oid_tostr(oid_str, oid_len+1, oid);
  git_error_set(GIT_ERROR_ODB, "object not found - %s (%.*s)",
   message, (int) oid_len, oid_str);
 } else
  git_error_set(GIT_ERROR_ODB, "object not found - %s", message);

 return GIT_ENOTFOUND;
}
