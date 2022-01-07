
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_odb_object ;
typedef int git_odb ;
typedef int git_object_t ;


 int git_odb__read_header_or_object (int **,size_t*,int *,int *,int const*) ;
 int git_odb_object_free (int *) ;

int git_odb_read_header(size_t *len_p, git_object_t *type_p, git_odb *db, const git_oid *id)
{
 int error;
 git_odb_object *object;

 error = git_odb__read_header_or_object(&object, len_p, type_p, db, id);

 if (object)
  git_odb_object_free(object);

 return error;
}
