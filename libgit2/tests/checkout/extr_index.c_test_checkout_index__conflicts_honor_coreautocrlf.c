
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_index ;
typedef int git_checkout_options ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_CHECKOUT_OPTIONS_INIT ;
 int add_conflict (int *,char*) ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_checkout_index (int ,int *,int *) ;
 int git_futils_readbuffer (TYPE_1__*,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int ) ;
 int p_unlink (char*) ;
 scalar_t__ strcmp (int ,char*) ;

void test_checkout_index__conflicts_honor_coreautocrlf(void)
{
}
