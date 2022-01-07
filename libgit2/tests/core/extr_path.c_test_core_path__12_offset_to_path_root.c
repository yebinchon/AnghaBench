
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 int git_path_root (char*) ;

void test_core_path__12_offset_to_path_root(void)
{
 cl_assert(git_path_root("non/rooted/path") == -1);
 cl_assert(git_path_root("/rooted/path") == 0);
}
