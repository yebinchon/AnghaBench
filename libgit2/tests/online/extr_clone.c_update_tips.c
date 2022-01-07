
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char git_oid ;


 int GIT_UNUSED (char const*) ;

__attribute__((used)) static int update_tips(const char *refname, const git_oid *a, const git_oid *b, void *payload)
{
 int *callcount = (int*)payload;
 GIT_UNUSED(refname); GIT_UNUSED(a); GIT_UNUSED(b);
 *callcount = *callcount + 1;
 return 0;
}
