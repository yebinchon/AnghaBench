
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _refspec ;
 int cl_assert_equal_s (int ,char*) ;
 int git_refspec_dst (int ) ;
 int git_refspec_src (int ) ;

void test_network_remote_remotes__refspec_parsing(void)
{
 cl_assert_equal_s(git_refspec_src(_refspec), "refs/heads/*");
 cl_assert_equal_s(git_refspec_dst(_refspec), "refs/remotes/test/*");
}
