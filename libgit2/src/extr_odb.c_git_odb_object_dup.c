
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_odb_object ;


 int git_cached_obj_incref (int *) ;

int git_odb_object_dup(git_odb_object **dest, git_odb_object *source)
{
 git_cached_obj_incref(source);
 *dest = source;
 return 0;
}
