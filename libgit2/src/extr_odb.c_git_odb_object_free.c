
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_odb_object ;


 int git_cached_obj_decref (int *) ;

void git_odb_object_free(git_odb_object *object)
{
 if (object == ((void*)0))
  return;

 git_cached_obj_decref(object);
}
