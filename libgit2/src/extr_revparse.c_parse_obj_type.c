
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object_t ;


 int GIT_OBJECT_BLOB ;
 int GIT_OBJECT_COMMIT ;
 int GIT_OBJECT_INVALID ;
 int GIT_OBJECT_TAG ;
 int GIT_OBJECT_TREE ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static git_object_t parse_obj_type(const char *str)
{
 if (!strcmp(str, "commit"))
  return GIT_OBJECT_COMMIT;

 if (!strcmp(str, "tree"))
  return GIT_OBJECT_TREE;

 if (!strcmp(str, "blob"))
  return GIT_OBJECT_BLOB;

 if (!strcmp(str, "tag"))
  return GIT_OBJECT_TAG;

 return GIT_OBJECT_INVALID;
}
