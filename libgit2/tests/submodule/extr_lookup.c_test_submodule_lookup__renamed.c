
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int count; } ;
typedef TYPE_2__ sm_lookup_data ;
struct TYPE_9__ {int member_0; } ;
struct TYPE_11__ {int mode; char const* path; int id; TYPE_1__ member_0; } ;
typedef TYPE_3__ git_index_entry ;
typedef int git_index ;
typedef int git_config ;
typedef int data ;


 int GIT_FILEMODE_COMMIT ;
 int cl_assert (TYPE_3__ const*) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,char*) ;
 int git_config_set_string (int *,char*,char const*) ;
 int git_index_add (int *,TYPE_3__*) ;
 int git_index_add_bypath (int *,char*) ;
 TYPE_3__* git_index_get_bypath (int *,char*,int ) ;
 int git_index_remove (int *,char*,int ) ;
 int git_index_write (int *) ;
 int git_oid_cpy (int *,int *) ;
 int git_repository_index__weakptr (int **,int ) ;
 int git_submodule_foreach (int ,int ,TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 int p_rename (char*,char*) ;
 int sm_lookup_cb ;

void test_submodule_lookup__renamed(void)
{
 const char *newpath = "sm_actually_changed";
 git_index *idx;
 sm_lookup_data data;

 cl_git_pass(git_repository_index__weakptr(&idx, g_repo));



 cl_git_pass(p_rename("submod2/sm_unchanged", "submod2/sm_actually_changed"));


 {
  git_config *cfg;

  cl_git_pass(git_config_open_ondisk(&cfg, "submod2/.gitmodules"));
  cl_git_pass(git_config_set_string(cfg, "submodule.sm_unchanged.path", newpath));
  git_config_free(cfg);

  cl_git_pass(git_index_add_bypath(idx, ".gitmodules"));
 }


 {
  git_config *cfg;

  cl_git_pass(git_config_open_ondisk(&cfg, "submod2/.git/modules/sm_unchanged/config"));
  cl_git_pass(git_config_set_string(cfg, "core.worktree", "../../../sm_actually_changed"));
  git_config_free(cfg);
 }


 {
  const git_index_entry *e;
  git_index_entry entry = {{ 0 }};

  e = git_index_get_bypath(idx, "sm_unchanged", 0);
  cl_assert(e);
  cl_assert_equal_i(GIT_FILEMODE_COMMIT, e->mode);

  entry.path = newpath;
  entry.mode = GIT_FILEMODE_COMMIT;
  git_oid_cpy(&entry.id, &e->id);

  cl_git_pass(git_index_remove(idx, "sm_unchanged", 0));
  cl_git_pass(git_index_add(idx, &entry));
  cl_git_pass(git_index_write(idx));
 }

 memset(&data, 0, sizeof(data));
 cl_git_pass(git_submodule_foreach(g_repo, sm_lookup_cb, &data));
 cl_assert_equal_i(8, data.count);
}
