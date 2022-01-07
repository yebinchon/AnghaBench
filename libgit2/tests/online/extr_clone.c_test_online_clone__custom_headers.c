
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; char** strings; } ;
struct TYPE_6__ {TYPE_1__ custom_headers; } ;
struct TYPE_7__ {TYPE_2__ fetch_opts; } ;


 int LIVE_REPO_URL ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 TYPE_3__ g_options ;
 int g_repo ;
 int git_clone (int *,int ,char*,TYPE_3__*) ;

void test_online_clone__custom_headers(void)
{
 char *empty_header = "";
 char *unnamed_header = "this is a header about nothing";
 char *newlines = "X-Custom: almost OK\n";
 char *conflict = "Accept: defined-by-git";
 char *ok = "X-Custom: this should be ok";

 g_options.fetch_opts.custom_headers.count = 1;

 g_options.fetch_opts.custom_headers.strings = &empty_header;
 cl_git_fail(git_clone(&g_repo, LIVE_REPO_URL, "./foo", &g_options));

 g_options.fetch_opts.custom_headers.strings = &unnamed_header;
 cl_git_fail(git_clone(&g_repo, LIVE_REPO_URL, "./foo", &g_options));

 g_options.fetch_opts.custom_headers.strings = &newlines;
 cl_git_fail(git_clone(&g_repo, LIVE_REPO_URL, "./foo", &g_options));

 g_options.fetch_opts.custom_headers.strings = &conflict;
 cl_git_fail(git_clone(&g_repo, LIVE_REPO_URL, "./foo", &g_options));


 g_options.fetch_opts.custom_headers.strings = &ok;
 cl_git_pass(git_clone(&g_repo, LIVE_REPO_URL, "./foo", &g_options));
}
