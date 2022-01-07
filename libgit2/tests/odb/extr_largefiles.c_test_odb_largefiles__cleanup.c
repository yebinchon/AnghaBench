
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int git_odb_free (int ) ;
 int odb ;

void test_odb_largefiles__cleanup(void)
{
 git_odb_free(odb);
 cl_git_sandbox_cleanup();
}
