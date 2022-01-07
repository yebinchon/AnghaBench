
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int oid_old; } ;
typedef TYPE_1__ git_reflog_entry ;


 int GIT_OID_HEX_ZERO ;
 int cl_assert (int) ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_pass (int ) ;
 int entrycount ;
 int g_reflog ;
 scalar_t__ git_oid_streq (int *,int ) ;
 int git_reflog_drop (int ,int,int) ;
 TYPE_1__* git_reflog_entry_byindex (int ,int) ;
 int git_reflog_entrycount (int ) ;

void test_refs_reflog_drop__can_drop_the_oldest_entry_and_rewrite_the_log_history(void)
{
 const git_reflog_entry *entry;

 cl_assert(entrycount > 2);

 cl_git_pass(git_reflog_drop(g_reflog, entrycount - 1, 1));
 cl_assert_equal_sz(entrycount - 1, git_reflog_entrycount(g_reflog));

 entry = git_reflog_entry_byindex(g_reflog, entrycount - 2);
 cl_assert(git_oid_streq(&entry->oid_old, GIT_OID_HEX_ZERO) == 0);
}
