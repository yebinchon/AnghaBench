
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_filter_list ;
typedef int git_filter ;
struct TYPE_7__ {char* ptr; void* size; int member_0; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_8__ {int klass; } ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ERROR_FILTER ;
 int GIT_FILTER_CRLF ;
 int GIT_FILTER_TO_ODB ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char*,char*) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 TYPE_4__* git_error_last () ;
 int git_filter_list_apply_to_data (TYPE_1__*,int *,TYPE_1__*) ;
 int git_filter_list_free (int *) ;
 int git_filter_list_new (int **,int ,int ,int ) ;
 int git_filter_list_push (int *,int *,int *) ;
 int * git_filter_lookup (int ) ;
 void* strlen (char*) ;

void test_filter_crlf__with_safecrlf(void)
{
 git_filter_list *fl;
 git_filter *crlf;
 git_buf in = {0}, out = GIT_BUF_INIT;

 cl_repo_set_bool(g_repo, "core.safecrlf", 1);

 cl_git_pass(git_filter_list_new(
  &fl, g_repo, GIT_FILTER_TO_ODB, 0));

 crlf = git_filter_lookup(GIT_FILTER_CRLF);
 cl_assert(crlf != ((void*)0));

 cl_git_pass(git_filter_list_push(fl, crlf, ((void*)0)));


 in.ptr = "Normal\r\nCRLF\r\nline-endings.\r\n";
 in.size = strlen(in.ptr);

 cl_git_pass(git_filter_list_apply_to_data(&out, fl, &in));
 cl_assert_equal_s("Normal\nCRLF\nline-endings.\n", out.ptr);


 in.ptr = "Mixed\nup\r\nLF\nand\r\nCRLF\nline-endings.\r\n";
 in.size = strlen(in.ptr);

 cl_git_fail(git_filter_list_apply_to_data(&out, fl, &in));
 cl_assert_equal_i(git_error_last()->klass, GIT_ERROR_FILTER);


 in.ptr = "Normal\nLF\nonly\nline-endings.\n";
 in.size = strlen(in.ptr);

 cl_git_fail(git_filter_list_apply_to_data(&out, fl, &in));
 cl_assert_equal_i(git_error_last()->klass, GIT_ERROR_FILTER);


 in.ptr = "Normal\nCR only\rand some more\nline-endings.\n";
 in.size = strlen(in.ptr);

 cl_git_pass(git_filter_list_apply_to_data(&out, fl, &in));
 cl_assert_equal_s("Normal\nCR only\rand some more\nline-endings.\n", out.ptr);

 git_filter_list_free(fl);
 git_buf_dispose(&out);
}
