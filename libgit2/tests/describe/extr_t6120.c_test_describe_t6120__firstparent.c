
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int only_follow_first_parent; int describe_strategy; } ;
typedef TYPE_1__ git_describe_options ;
typedef int git_describe_format_options ;


 int GIT_DESCRIBE_FORMAT_OPTIONS_INIT ;
 TYPE_1__ GIT_DESCRIBE_OPTIONS_INIT ;
 int GIT_DESCRIBE_TAGS ;
 int assert_describe (char*,char*,int ,TYPE_1__*,int *) ;
 int repo ;

void test_describe_t6120__firstparent(void)
{
 git_describe_options opts = GIT_DESCRIBE_OPTIONS_INIT;
 git_describe_format_options fmt_opts = GIT_DESCRIBE_FORMAT_OPTIONS_INIT;
 opts.describe_strategy = GIT_DESCRIBE_TAGS;

 assert_describe("c-7-*", "HEAD", repo, &opts, &fmt_opts);

 opts.only_follow_first_parent = 1;
 assert_describe("e-3-*", "HEAD", repo, &opts, &fmt_opts);
}
