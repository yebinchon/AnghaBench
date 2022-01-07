
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int RemoveDirectory (char*) ;
 int S_ISLNK (int ) ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_must_fail (int ) ;
 int cl_must_pass (int ) ;
 int clar_sandbox_path () ;
 int do_junction (int ,char*) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_join (int *,char,int ,char*) ;
 int git_buf_len (int *) ;
 int p_lstat (char*,struct stat*) ;
 int p_mkdir (char*,int) ;

void test_core_link__lstat_dangling_junction(void)
{
}
