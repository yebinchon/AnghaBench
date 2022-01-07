
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int RemoveDirectory (char*) ;
 int cl_must_fail (int ) ;
 int clar_sandbox_path () ;
 int do_junction (int ,char*) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_join (int *,char,int ,char*) ;
 int p_mkdir (char*,int) ;
 int p_stat (char*,struct stat*) ;

void test_core_link__stat_dangling_junction(void)
{
}
