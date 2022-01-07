
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_PATH_REJECT_DOT_GIT_HFS ;
 int cl_assert_equal_b (int,int ) ;
 int git_path_isvalid (int *,char*,int ,int ) ;

void test_path_core__isvalid_dotgit_with_hfs_ignorables(void)
{
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), ".git", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), ".git\xe2\x80\x8c", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), ".gi\xe2\x80\x8dT", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), ".g\xe2\x80\x8eIt", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), ".\xe2\x80\x8fgIt", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "\xe2\x80\xaa.gIt", 0, GIT_PATH_REJECT_DOT_GIT_HFS));

 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "\xe2\x80\xab.\xe2\x80\xacG\xe2\x80\xadI\xe2\x80\xaet", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "\xe2\x81\xab.\xe2\x80\xaaG\xe2\x81\xabI\xe2\x80\xact", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "\xe2\x81\xad.\xe2\x80\xaeG\xef\xbb\xbfIT", 0, GIT_PATH_REJECT_DOT_GIT_HFS));

 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".g", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".gi", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), " .git", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "..git\xe2\x80\x8c", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".gi\xe2\x80\x8dT.", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".g\xe2\x80It", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".\xe2gIt", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "\xe2\x80\xaa.gi", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".gi\x80\x8dT", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".gi\x8dT", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".g\xe2i\x80T\x8e", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".git\xe2\x80\xbf", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".git\xe2\xab\x81", 0, GIT_PATH_REJECT_DOT_GIT_HFS));
}
