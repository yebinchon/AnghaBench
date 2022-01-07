
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 scalar_t__ GIT_OID_HEXSZ ;
 char* git__malloc (scalar_t__) ;
 int git_oid_nfmt (char*,scalar_t__,int const*) ;

char *git_oid_allocfmt(const git_oid *oid)
{
 char *str = git__malloc(GIT_OID_HEXSZ + 1);
 if (!str)
  return ((void*)0);
 git_oid_nfmt(str, GIT_OID_HEXSZ + 1, oid);
 return str;
}
