
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
 int cl_assert_equal_s (int ,char*) ;
 int git_object_type2string (int) ;

void test_object_raw_type2string__convert_type_to_string(void)
{
 cl_assert_equal_s(git_object_type2string(GIT_OBJECT_INVALID), "");
 cl_assert_equal_s(git_object_type2string(0), "");
 cl_assert_equal_s(git_object_type2string(GIT_OBJECT_COMMIT), "commit");
 cl_assert_equal_s(git_object_type2string(GIT_OBJECT_TREE), "tree");
 cl_assert_equal_s(git_object_type2string(GIT_OBJECT_BLOB), "blob");
 cl_assert_equal_s(git_object_type2string(GIT_OBJECT_TAG), "tag");
 cl_assert_equal_s(git_object_type2string(5), "");
 cl_assert_equal_s(git_object_type2string(GIT_OBJECT_OFS_DELTA), "OFS_DELTA");
 cl_assert_equal_s(git_object_type2string(GIT_OBJECT_REF_DELTA), "REF_DELTA");

 cl_assert_equal_s(git_object_type2string(-2), "");
 cl_assert_equal_s(git_object_type2string(8), "");
 cl_assert_equal_s(git_object_type2string(1234), "");
}
