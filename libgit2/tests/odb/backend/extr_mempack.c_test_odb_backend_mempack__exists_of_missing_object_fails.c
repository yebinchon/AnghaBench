
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _odb ;
 int _oid ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 scalar_t__ git_odb_exists (int ,int *) ;
 int git_oid_fromstr (int *,char*) ;

void test_odb_backend_mempack__exists_of_missing_object_fails(void)
{
 cl_git_pass(git_oid_fromstr(&_oid, "f6ea0495187600e7b2288c8ac19c5886383a4633"));
 cl_assert(git_odb_exists(_odb, &_oid) == 0);
}
