
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object_t ;
typedef int git_filemode_t ;




 int GIT_OBJECT_BLOB ;
 int GIT_OBJECT_COMMIT ;
 int GIT_OBJECT_TREE ;

__attribute__((used)) static git_object_t otype_from_mode(git_filemode_t filemode)
{
 switch (filemode) {
 case 128:
  return GIT_OBJECT_TREE;
 case 129:
  return GIT_OBJECT_COMMIT;
 default:
  return GIT_OBJECT_BLOB;
 }
}
