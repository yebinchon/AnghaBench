
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int oid_cur; int oid_old; } ;
typedef TYPE_1__ git_reflog_entry ;
typedef int git_oid ;


 int cl_assert (int) ;
 int cl_assert_equal_i (int ,scalar_t__) ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_pass (int ) ;
 int entrycount ;
 int g_reflog ;
 scalar_t__ git_oid_cmp (int *,int *) ;
 int git_oid_cpy (int *,int *) ;
 int git_reflog_drop (int ,int,int) ;
 TYPE_1__* git_reflog_entry_byindex (int ,int) ;
 int git_reflog_entrycount (int ) ;

void test_refs_reflog_drop__can_drop_an_entry_and_rewrite_the_log_history(void)
{
 const git_reflog_entry *before_current;
 const git_reflog_entry *after_current;
 git_oid before_current_old_oid, before_current_cur_oid;

 cl_assert(entrycount > 4);

 before_current = git_reflog_entry_byindex(g_reflog, 1);

 git_oid_cpy(&before_current_old_oid, &before_current->oid_old);
 git_oid_cpy(&before_current_cur_oid, &before_current->oid_cur);

 cl_git_pass(git_reflog_drop(g_reflog, 1, 1));

 cl_assert_equal_sz(entrycount - 1, git_reflog_entrycount(g_reflog));

 after_current = git_reflog_entry_byindex(g_reflog, 0);

 cl_assert_equal_i(0, git_oid_cmp(&before_current_old_oid, &after_current->oid_old));
 cl_assert(0 != git_oid_cmp(&before_current_cur_oid, &after_current->oid_cur));
}
