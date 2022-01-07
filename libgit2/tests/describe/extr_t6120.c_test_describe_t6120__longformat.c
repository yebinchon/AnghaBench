
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_describe_options ;
struct TYPE_4__ {int always_use_long_format; } ;
typedef TYPE_1__ git_describe_format_options ;


 TYPE_1__ GIT_DESCRIBE_FORMAT_OPTIONS_INIT ;
 int GIT_DESCRIBE_OPTIONS_INIT ;
 int assert_describe (char*,char*,int ,int *,TYPE_1__*) ;
 int repo ;

void test_describe_t6120__longformat(void)
{
 git_describe_options opts = GIT_DESCRIBE_OPTIONS_INIT;
 git_describe_format_options fmt_opts = GIT_DESCRIBE_FORMAT_OPTIONS_INIT;

 fmt_opts.always_use_long_format = 1;

 assert_describe("B-0-*", "HEAD^^2^", repo, &opts, &fmt_opts);
 assert_describe("A-3-*", "HEAD^^2", repo, &opts, &fmt_opts);
}
