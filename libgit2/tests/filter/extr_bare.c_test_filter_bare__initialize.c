
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int GIT_BLOB_FILTER_ATTTRIBUTES_FROM_HEAD ;
 int GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES ;
 int cl_fixture_sandbox (char*) ;
 int cl_git_pass (int ) ;
 TYPE_1__ filter_opts ;
 int g_repo ;
 int git_repository_open (int *,char*) ;

void test_filter_bare__initialize(void)
{
 cl_fixture_sandbox("crlf.git");
 cl_git_pass(git_repository_open(&g_repo, "crlf.git"));

 filter_opts.flags |= GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES;
 filter_opts.flags |= GIT_BLOB_FILTER_ATTTRIBUTES_FROM_HEAD;
}
