
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_odb_object ;


 unsigned int ARRAY_SIZE (int *) ;
 int _odb ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_odb_exists (int ,int *) ;
 int git_odb_object_free (int *) ;
 int git_odb_read (int **,int ,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int * packed_objects_one ;

void test_odb_packed_one__mass_read(void)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(packed_objects_one); ++i) {
  git_oid id;
  git_odb_object *obj;

  cl_git_pass(git_oid_fromstr(&id, packed_objects_one[i]));
  cl_assert(git_odb_exists(_odb, &id) == 1);
  cl_git_pass(git_odb_read(&obj, _odb, &id));

  git_odb_object_free(obj);
 }
}
