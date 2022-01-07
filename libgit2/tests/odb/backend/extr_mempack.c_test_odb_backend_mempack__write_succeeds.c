
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OBJECT_BLOB ;
 int _obj ;
 int _odb ;
 int _oid ;
 int cl_git_pass (int ) ;
 int git_odb_read (int *,int ,int *) ;
 int git_odb_write (int *,int ,char const*,scalar_t__,int ) ;
 scalar_t__ strlen (char const*) ;

void test_odb_backend_mempack__write_succeeds(void)
{
 const char *data = "data";
 cl_git_pass(git_odb_write(&_oid, _odb, data, strlen(data) + 1, GIT_OBJECT_BLOB));
 cl_git_pass(git_odb_read(&_obj, _odb, &_oid));
}
