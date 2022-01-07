
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OBJECT_BLOB ;
 int GIT_OBJECT_COMMIT ;
 int GIT_OBJECT_INVALID ;
 int GIT_OBJECT_OFS_DELTA ;
 int GIT_OBJECT_REF_DELTA ;
 int GIT_OBJECT_TAG ;
 int GIT_OBJECT_TREE ;
 int cl_assert (int) ;
 int git_object_typeisloose (int) ;

void test_object_raw_type2string__check_type_is_loose(void)
{
 cl_assert(git_object_typeisloose(GIT_OBJECT_INVALID) == 0);
 cl_assert(git_object_typeisloose(0) == 0);
 cl_assert(git_object_typeisloose(GIT_OBJECT_COMMIT) == 1);
 cl_assert(git_object_typeisloose(GIT_OBJECT_TREE) == 1);
 cl_assert(git_object_typeisloose(GIT_OBJECT_BLOB) == 1);
 cl_assert(git_object_typeisloose(GIT_OBJECT_TAG) == 1);
 cl_assert(git_object_typeisloose(5) == 0);
 cl_assert(git_object_typeisloose(GIT_OBJECT_OFS_DELTA) == 0);
 cl_assert(git_object_typeisloose(GIT_OBJECT_REF_DELTA) == 0);

 cl_assert(git_object_typeisloose(-2) == 0);
 cl_assert(git_object_typeisloose(8) == 0);
 cl_assert(git_object_typeisloose(1234) == 0);
}
