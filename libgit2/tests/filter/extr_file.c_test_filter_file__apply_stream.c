
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int (* free ) (TYPE_3__*) ;} ;
struct TYPE_5__ {int ptr; } ;
struct TYPE_6__ {int member_2; int member_1; int member_0; } ;
struct buf_writestream {TYPE_3__ base; TYPE_1__ buf; TYPE_2__ member_0; } ;
typedef int git_filter_list ;
typedef int git_filter ;


 int GIT_FILTER_CRLF ;
 int GIT_FILTER_TO_ODB ;
 int buf_writestream_close ;
 int buf_writestream_free ;
 int buf_writestream_write ;
 int cl_assert (int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_filter_list_free (int *) ;
 int git_filter_list_new (int **,int ,int ,int ) ;
 int git_filter_list_push (int *,int *,int *) ;
 int git_filter_list_stream_file (int *,int ,char*,TYPE_3__*) ;
 int * git_filter_lookup (int ) ;
 int stub1 (TYPE_3__*) ;

void test_filter_file__apply_stream(void)
{
 git_filter_list *fl;
 git_filter *crlf;
 struct buf_writestream write_target = { {
  buf_writestream_write,
  buf_writestream_close,
  buf_writestream_free } };

 cl_git_pass(git_filter_list_new(
  &fl, g_repo, GIT_FILTER_TO_ODB, 0));

 crlf = git_filter_lookup(GIT_FILTER_CRLF);
 cl_assert(crlf != ((void*)0));

 cl_git_pass(git_filter_list_push(fl, crlf, ((void*)0)));

 cl_git_pass(git_filter_list_stream_file(fl, g_repo, "all-crlf", &write_target.base));
 cl_assert_equal_s("crlf\ncrlf\ncrlf\ncrlf\n", write_target.buf.ptr);

 git_filter_list_free(fl);
 write_target.base.free(&write_target.base);
}
