
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GIT_OBJECT_BLOB ;
 scalar_t__ GIT_OBJECT_COMMIT ;
 scalar_t__ GIT_OBJECT_INVALID ;
 scalar_t__ GIT_OBJECT_OFS_DELTA ;
 scalar_t__ GIT_OBJECT_REF_DELTA ;
 scalar_t__ GIT_OBJECT_TAG ;
 scalar_t__ GIT_OBJECT_TREE ;
 int cl_assert (int) ;
 scalar_t__ git_object_string2type (char*) ;

void test_object_raw_type2string__convert_string_to_type(void)
{
 cl_assert(git_object_string2type(((void*)0)) == GIT_OBJECT_INVALID);
 cl_assert(git_object_string2type("") == GIT_OBJECT_INVALID);
 cl_assert(git_object_string2type("commit") == GIT_OBJECT_COMMIT);
 cl_assert(git_object_string2type("tree") == GIT_OBJECT_TREE);
 cl_assert(git_object_string2type("blob") == GIT_OBJECT_BLOB);
 cl_assert(git_object_string2type("tag") == GIT_OBJECT_TAG);
 cl_assert(git_object_string2type("OFS_DELTA") == GIT_OBJECT_OFS_DELTA);
 cl_assert(git_object_string2type("REF_DELTA") == GIT_OBJECT_REF_DELTA);

 cl_assert(git_object_string2type("CoMmIt") == GIT_OBJECT_INVALID);
 cl_assert(git_object_string2type("hohoho") == GIT_OBJECT_INVALID);
}
