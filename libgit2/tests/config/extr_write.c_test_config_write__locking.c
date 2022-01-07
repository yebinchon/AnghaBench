
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_transaction ;
struct TYPE_4__ {int value; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config ;


 int GIT_ENOTFOUND ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_mkfile (char const*,char*) ;
 int cl_git_pass (int ) ;
 int git_config_entry_free (TYPE_1__*) ;
 int git_config_free (int *) ;
 int git_config_get_entry (TYPE_1__**,int *,char*) ;
 int git_config_lock (int **,int *) ;
 int git_config_open_ondisk (int **,char const*) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_transaction_commit (int *) ;
 int git_transaction_free (int *) ;

void test_config_write__locking(void)
{
 git_config *cfg, *cfg2;
 git_config_entry *entry;
 git_transaction *tx;
 const char *filename = "locked-file";


 cl_git_mkfile(filename, "[section]\n\tname = value\n");
 cl_git_pass(git_config_open_ondisk(&cfg, filename));
 cl_git_pass(git_config_get_entry(&entry, cfg, "section.name"));
 cl_assert_equal_s("value", entry->value);
 git_config_entry_free(entry);
 cl_git_pass(git_config_lock(&tx, cfg));


 cl_git_pass(git_config_set_string(cfg, "section.name", "other value"));
 cl_git_pass(git_config_set_string(cfg, "section2.name3", "more value"));


 cl_git_pass(git_config_open_ondisk(&cfg2, filename));
 cl_git_pass(git_config_get_entry(&entry, cfg2, "section.name"));
 cl_assert_equal_s("value", entry->value);
 git_config_entry_free(entry);
 cl_git_fail_with(GIT_ENOTFOUND, git_config_get_entry(&entry, cfg2, "section2.name3"));
 git_config_free(cfg2);


 cl_git_pass(git_config_get_entry(&entry, cfg, "section.name"));
 cl_assert_equal_s("value", entry->value);
 git_config_entry_free(entry);
 cl_git_fail_with(GIT_ENOTFOUND, git_config_get_entry(&entry, cfg, "section2.name3"));

 cl_git_pass(git_transaction_commit(tx));
 git_transaction_free(tx);


 cl_git_pass(git_config_get_entry(&entry, cfg, "section.name"));
 cl_assert_equal_s("other value", entry->value);
 git_config_entry_free(entry);
 cl_git_pass(git_config_get_entry(&entry, cfg, "section2.name3"));
 cl_assert_equal_s("more value", entry->value);
 git_config_entry_free(entry);

 git_config_free(cfg);


 cl_git_pass(git_config_open_ondisk(&cfg, filename));
 cl_git_pass(git_config_get_entry(&entry, cfg, "section.name"));
 cl_assert_equal_s("other value", entry->value);
 git_config_entry_free(entry);
 cl_git_pass(git_config_get_entry(&entry, cfg, "section2.name3"));
 cl_assert_equal_s("more value", entry->value);
 git_config_entry_free(entry);

 git_config_free(cfg);
}
