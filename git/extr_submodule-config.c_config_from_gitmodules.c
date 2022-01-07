
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct repository {TYPE_2__* objects; scalar_t__ worktree; } ;
struct object_id {int dummy; } ;
struct git_config_source {char* file; char* blob; int member_0; } ;
struct config_options {int member_0; } ;
typedef int config_fn_t ;
struct TYPE_4__ {TYPE_1__* odb; } ;
struct TYPE_3__ {int path; } ;


 int GITMODULES_FILE ;
 int GITMODULES_HEAD ;
 int GITMODULES_INDEX ;
 int add_to_alternates_memory (int ) ;
 int config_with_options (int ,void*,struct git_config_source*,struct config_options const*) ;
 scalar_t__ file_exists (char*) ;
 int free (char*) ;
 int oid_to_hex (struct object_id*) ;
 scalar_t__ repo_get_oid (struct repository*,int ,struct object_id*) ;
 char* repo_worktree_path (struct repository*,int ) ;
 struct repository* the_repository ;
 char* xstrdup (int ) ;

__attribute__((used)) static void config_from_gitmodules(config_fn_t fn, struct repository *repo, void *data)
{
 if (repo->worktree) {
  struct git_config_source config_source = { 0 };
  const struct config_options opts = { 0 };
  struct object_id oid;
  char *file;
  char *oidstr = ((void*)0);

  file = repo_worktree_path(repo, GITMODULES_FILE);
  if (file_exists(file)) {
   config_source.file = file;
  } else if (repo_get_oid(repo, GITMODULES_INDEX, &oid) >= 0 ||
      repo_get_oid(repo, GITMODULES_HEAD, &oid) >= 0) {
   config_source.blob = oidstr = xstrdup(oid_to_hex(&oid));
   if (repo != the_repository)
    add_to_alternates_memory(repo->objects->odb->path);
  } else {
   goto out;
  }

  config_with_options(fn, data, &config_source, &opts);

out:
  free(oidstr);
  free(file);
 }
}
