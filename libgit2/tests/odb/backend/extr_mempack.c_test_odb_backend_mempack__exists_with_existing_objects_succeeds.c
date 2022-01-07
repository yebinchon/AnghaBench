
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OBJECT_BLOB ;
 int _odb ;
 int _oid ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_odb_exists (int ,int *) ;
 int git_odb_write (int *,int ,char const*,scalar_t__,int ) ;
 scalar_t__ strlen (char const*) ;

void test_odb_backend_mempack__exists_with_existing_objects_succeeds(void)
{
 const char *data = "data";
 cl_git_pass(git_odb_write(&_oid, _odb, data, strlen(data) + 1, GIT_OBJECT_BLOB));
 cl_assert(git_odb_exists(_odb, &_oid) == 1);
}
