
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int gitno__match_host (char*,char*) ;

void test_network_matchhost__match(void)
{
 cl_git_pass(gitno__match_host("*.example.org", "www.example.org"));
 cl_git_pass(gitno__match_host("*.foo.example.org", "www.foo.example.org"));
 cl_git_fail(gitno__match_host("*.foo.example.org", "foo.example.org"));
 cl_git_fail(gitno__match_host("*.foo.example.org", "www.example.org"));
 cl_git_fail(gitno__match_host("*.example.org", "example.org"));
 cl_git_fail(gitno__match_host("*.example.org", "www.foo.example.org"));
 cl_git_fail(gitno__match_host("*.example.org", "blah.www.www.example.org"));
}
