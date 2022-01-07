
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int GIT_ERROR ;
 int TEST_INDEXBAD_PATH ;
 int cl_git_fail_with (int ,int ) ;
 int git_index_open (int **,int ) ;

void test_index_tests__corrupted_extension(void)
{
 git_index *index;

 cl_git_fail_with(git_index_open(&index, TEST_INDEXBAD_PATH), GIT_ERROR);
}
