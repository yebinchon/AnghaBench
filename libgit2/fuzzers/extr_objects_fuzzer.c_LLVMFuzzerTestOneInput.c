
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int git_object_t ;
typedef int git_object ;


 size_t ARRAY_SIZE (int const*) ;
 int const GIT_OBJECT_BLOB ;
 int const GIT_OBJECT_COMMIT ;
 int const GIT_OBJECT_TAG ;
 int const GIT_OBJECT_TREE ;
 scalar_t__ git_object__from_raw (int **,char const*,size_t,int const) ;
 int git_object_free (int *) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
 const git_object_t types[] = {
  GIT_OBJECT_BLOB, GIT_OBJECT_TREE, GIT_OBJECT_COMMIT, GIT_OBJECT_TAG
 };
 git_object *object = ((void*)0);
 size_t i;






 for (i = 0; i < ARRAY_SIZE(types); i++) {
  if (git_object__from_raw(&object, (const char *) data, size, types[i]) < 0)
   continue;
  git_object_free(object);
  object = ((void*)0);
 }

 return 0;
}
