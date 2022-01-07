
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int git_oid_fromstrn (int *,char const*,int ) ;
 int strlen (char const*) ;

int git_oid_fromstrp(git_oid *out, const char *str)
{
 return git_oid_fromstrn(out, str, strlen(str));
}
