
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

const char *merge_their_label(const char *branchname)
{
 const char *slash;

 if ((slash = strrchr(branchname, '/')) == ((void*)0))
  return branchname;

 if (*(slash+1) == '\0')
  return "theirs";

 return slash+1;
}
