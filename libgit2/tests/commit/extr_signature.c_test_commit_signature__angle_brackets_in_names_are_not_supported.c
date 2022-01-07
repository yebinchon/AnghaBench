
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_fail (int ) ;
 int try_build_signature (char*,char*,int,int) ;

void test_commit_signature__angle_brackets_in_names_are_not_supported(void)
{
 cl_git_fail(try_build_signature("<Phil Haack", "phil@haack", 1234567890, 60));
 cl_git_fail(try_build_signature("Phil>Haack", "phil@haack", 1234567890, 60));
 cl_git_fail(try_build_signature("<Phil Haack>", "phil@haack", 1234567890, 60));
}
