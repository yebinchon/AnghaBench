
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 scalar_t__ git_oid_strcmp (int const*,char const*) ;

int git_oid_streq(const git_oid *oid_a, const char *str)
{
 return git_oid_strcmp(oid_a, str) == 0 ? 0 : -1;
}
