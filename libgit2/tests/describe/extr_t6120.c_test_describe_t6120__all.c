
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int describe_strategy; } ;
typedef TYPE_1__ git_describe_options ;
typedef int git_describe_format_options ;


 int GIT_DESCRIBE_ALL ;
 int GIT_DESCRIBE_FORMAT_OPTIONS_INIT ;
 TYPE_1__ GIT_DESCRIBE_OPTIONS_INIT ;
 int assert_describe (char*,char*,int ,TYPE_1__*,int *) ;
 int repo ;

void test_describe_t6120__all(void)
{
 git_describe_options opts = GIT_DESCRIBE_OPTIONS_INIT;
 git_describe_format_options fmt_opts = GIT_DESCRIBE_FORMAT_OPTIONS_INIT;
 opts.describe_strategy = GIT_DESCRIBE_ALL;

 assert_describe("heads/master", "HEAD", repo, &opts, &fmt_opts);
 assert_describe("tags/c-*", "HEAD^", repo, &opts, &fmt_opts);
 assert_describe("tags/e", "HEAD^^^", repo, &opts, &fmt_opts);
}
