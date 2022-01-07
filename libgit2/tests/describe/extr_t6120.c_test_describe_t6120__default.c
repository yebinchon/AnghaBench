
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_describe_options ;
typedef int git_describe_format_options ;


 int GIT_DESCRIBE_FORMAT_OPTIONS_INIT ;
 int GIT_DESCRIBE_OPTIONS_INIT ;
 int assert_describe (char*,char*,int ,int *,int *) ;
 int repo ;

void test_describe_t6120__default(void)
{
 git_describe_options opts = GIT_DESCRIBE_OPTIONS_INIT;
 git_describe_format_options fmt_opts = GIT_DESCRIBE_FORMAT_OPTIONS_INIT;

 assert_describe("A-*", "HEAD", repo, &opts, &fmt_opts);
 assert_describe("A-*", "HEAD^", repo, &opts, &fmt_opts);
 assert_describe("R-*", "HEAD^^", repo, &opts, &fmt_opts);
 assert_describe("A-*", "HEAD^^2", repo, &opts, &fmt_opts);
 assert_describe("B", "HEAD^^2^", repo, &opts, &fmt_opts);
 assert_describe("R-*", "HEAD^^^", repo, &opts, &fmt_opts);
}
