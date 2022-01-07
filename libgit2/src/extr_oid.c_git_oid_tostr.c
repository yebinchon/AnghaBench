
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_OID_HEXSZ ;
 int git_oid_nfmt (char*,size_t,int const*) ;

char *git_oid_tostr(char *out, size_t n, const git_oid *oid)
{
 if (!out || n == 0)
  return "";

 if (n > GIT_OID_HEXSZ + 1)
  n = GIT_OID_HEXSZ + 1;

 git_oid_nfmt(out, n - 1, oid);
 out[n - 1] = '\0';

 return out;
}
