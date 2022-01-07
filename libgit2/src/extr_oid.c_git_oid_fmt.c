
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_OID_HEXSZ ;
 int git_oid_nfmt (char*,int ,int const*) ;

void git_oid_fmt(char *str, const git_oid *oid)
{
 git_oid_nfmt(str, GIT_OID_HEXSZ, oid);
}
