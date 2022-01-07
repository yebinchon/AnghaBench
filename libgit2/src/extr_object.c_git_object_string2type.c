
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object_t ;


 int GIT_OBJECT_INVALID ;
 int git_object_stringn2type (char const*,int ) ;
 int strlen (char const*) ;

git_object_t git_object_string2type(const char *str)
{
 if (!str)
  return GIT_OBJECT_INVALID;

 return git_object_stringn2type(str, strlen(str));
}
