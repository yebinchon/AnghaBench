
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _odb ;
 int _oid ;
 int _repo ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_blob_create_from_buffer (int *,int ,char const*,scalar_t__) ;
 int git_odb_exists (int ,int *) ;
 scalar_t__ strlen (char const*) ;

void test_odb_backend_mempack__blob_create_from_buffer_succeeds(void)
{
 const char *data = "data";

 cl_git_pass(git_blob_create_from_buffer(&_oid, _repo, data, strlen(data) + 1));
 cl_assert(git_odb_exists(_odb, &_oid) == 1);
}
