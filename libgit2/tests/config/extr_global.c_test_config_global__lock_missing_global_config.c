
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_transaction ;
struct TYPE_4__ {int value; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config ;


 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_config_entry_free (TYPE_1__*) ;
 int git_config_free (int *) ;
 int git_config_get_entry (TYPE_1__**,int *,char*) ;
 int git_config_lock (int **,int *) ;
 int git_config_open_default (int **) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_transaction_commit (int *) ;
 int git_transaction_free (int *) ;
 int p_unlink (char*) ;

void test_config_global__lock_missing_global_config(void)
{
 git_config *cfg;
 git_config_entry *entry;
 git_transaction *transaction;

 p_unlink("home/.gitconfig");

 cl_git_pass(git_config_open_default(&cfg));
 cl_git_pass(git_config_lock(&transaction, cfg));
 cl_git_pass(git_config_set_string(cfg, "assertion.fail", "boom"));
 cl_git_pass(git_transaction_commit(transaction));
 git_transaction_free(transaction);


 cl_git_pass(git_config_get_entry(&entry, cfg, "assertion.fail"));
 cl_assert_equal_s("boom", entry->value);

 git_config_entry_free(entry);
 git_config_free(cfg);


 cl_git_pass(git_config_open_default(&cfg));
 cl_git_pass(git_config_get_entry(&entry, cfg, "assertion.fail"));
 cl_assert_equal_s("boom", entry->value);

 git_config_entry_free(entry);
 git_config_free(cfg);
}
