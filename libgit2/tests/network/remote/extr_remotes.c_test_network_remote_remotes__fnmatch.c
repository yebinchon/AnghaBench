
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _refspec ;
 int cl_assert (int ) ;
 int git_refspec_src_matches (int ,char*) ;

void test_network_remote_remotes__fnmatch(void)
{
 cl_assert(git_refspec_src_matches(_refspec, "refs/heads/master"));
 cl_assert(git_refspec_src_matches(_refspec, "refs/heads/multi/level/branch"));
}
