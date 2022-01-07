
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_attr_value_t ;


 int GIT_ATTR_VALUE_FALSE ;
 int GIT_ATTR_VALUE_STRING ;
 int GIT_ATTR_VALUE_TRUE ;
 int GIT_ATTR_VALUE_UNSPECIFIED ;
 char const* git_attr__false ;
 char const* git_attr__true ;
 char const* git_attr__unset ;

git_attr_value_t git_attr_value(const char *attr)
{
 if (attr == ((void*)0) || attr == git_attr__unset)
  return GIT_ATTR_VALUE_UNSPECIFIED;

 if (attr == git_attr__true)
  return GIT_ATTR_VALUE_TRUE;

 if (attr == git_attr__false)
  return GIT_ATTR_VALUE_FALSE;

 return GIT_ATTR_VALUE_STRING;
}
