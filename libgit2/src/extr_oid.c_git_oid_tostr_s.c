
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_2__ {char* oid_fmt; } ;


 TYPE_1__* GIT_GLOBAL ;
 scalar_t__ GIT_OID_HEXSZ ;
 int git_oid_nfmt (char*,scalar_t__,int const*) ;

char *git_oid_tostr_s(const git_oid *oid)
{
 char *str = GIT_GLOBAL->oid_fmt;
 git_oid_nfmt(str, GIT_OID_HEXSZ + 1, oid);
 return str;
}
