
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct checkout_index_entry {int stage; int path; int oid_str; int mode; } ;
struct TYPE_5__ {int path; int id; int mode; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_INDEX_ENTRY_STAGE_SET (TYPE_1__*,int) ;
 int TEST_REPO_PATH ;
 int cl_git_pass (int ) ;
 int g_index ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,int ) ;
 int git_index_add (int ,TYPE_1__*) ;
 int git_index_remove_bypath (int ,int ) ;
 int git_oid_fromstr (int *,int ) ;
 int memset (TYPE_1__*,int,int) ;
 int p_unlink (int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void create_index(struct checkout_index_entry *entries, size_t entries_len)
{
 git_buf path = GIT_BUF_INIT;
 size_t i;

 for (i = 0; i < entries_len; i++) {
  git_buf_joinpath(&path, TEST_REPO_PATH, entries[i].path);

  if (entries[i].stage == 3 && (i == 0 || strcmp(entries[i-1].path, entries[i].path) != 0 || entries[i-1].stage != 2))
   p_unlink(git_buf_cstr(&path));

  cl_git_pass(git_index_remove_bypath(g_index, entries[i].path));
 }

 for (i = 0; i < entries_len; i++) {
  git_index_entry entry;

  memset(&entry, 0x0, sizeof(git_index_entry));

  entry.mode = entries[i].mode;
  GIT_INDEX_ENTRY_STAGE_SET(&entry, entries[i].stage);
  git_oid_fromstr(&entry.id, entries[i].oid_str);
  entry.path = entries[i].path;

  cl_git_pass(git_index_add(g_index, &entry));
 }

 git_buf_dispose(&path);
}
