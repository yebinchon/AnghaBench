
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_describe_options ;
struct TYPE_4__ {char* dirty_suffix; } ;
typedef TYPE_1__ git_describe_format_options ;


 TYPE_1__ GIT_DESCRIBE_FORMAT_OPTIONS_INIT ;
 int GIT_DESCRIBE_OPTIONS_INIT ;
 int assert_describe_workdir (char*,int ,int *,TYPE_1__*) ;
 int cl_git_mkfile (char*,char*) ;
 int repo ;

void test_describe_t6120__workdir(void)
{
 git_describe_options opts = GIT_DESCRIBE_OPTIONS_INIT;
 git_describe_format_options fmt_opts = GIT_DESCRIBE_FORMAT_OPTIONS_INIT;

 assert_describe_workdir("A-*[0-9a-f]", repo, &opts, &fmt_opts);
 cl_git_mkfile("describe/file", "something different");

 fmt_opts.dirty_suffix = "-dirty";
 assert_describe_workdir("A-*[0-9a-f]-dirty", repo, &opts, &fmt_opts);
 fmt_opts.dirty_suffix = ".mod";
 assert_describe_workdir("A-*[0-9a-f].mod", repo, &opts, &fmt_opts);
}
