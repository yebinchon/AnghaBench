
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL ;
 int git_reference__is_valid_name (char const*,int ) ;

int git_reference_is_valid_name(const char *refname)
{
 return git_reference__is_valid_name(refname, GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL);
}
