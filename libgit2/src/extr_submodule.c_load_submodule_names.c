
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_strmap ;
typedef int git_repository ;
typedef int git_config_iterator ;
struct TYPE_9__ {int value; int name; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config ;
struct TYPE_10__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_ERROR_NOMEMORY ;
 int GIT_ERROR_SUBMODULE ;
 int GIT_ITEROVER ;
 int free_submodule_names (int *) ;
 int git__strdup (int ) ;
 int git_buf_clear (TYPE_2__*) ;
 int git_buf_detach (TYPE_2__*) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_put (TYPE_2__*,char const*,int) ;
 int git_config_iterator_free (int *) ;
 int git_config_iterator_glob_new (int **,int *,char const*) ;
 int git_config_next (TYPE_1__**,int *) ;
 int git_error_set (int ,char*,...) ;
 scalar_t__ git_strmap_exists (int *,int ) ;
 int git_strmap_new (int **) ;
 int git_strmap_set (int *,int ,int ) ;
 int git_submodule_name_is_valid (int *,int ,int ) ;
 char* strchr (int ,char) ;
 char* strrchr (int ,char) ;

__attribute__((used)) static int load_submodule_names(git_strmap **out, git_repository *repo, git_config *cfg)
{
 const char *key = "submodule\\..*\\.path";
 git_config_iterator *iter = ((void*)0);
 git_config_entry *entry;
 git_buf buf = GIT_BUF_INIT;
 git_strmap *names;
 int isvalid, error;

 *out = ((void*)0);

 if ((error = git_strmap_new(&names)) < 0)
  goto out;

 if ((error = git_config_iterator_glob_new(&iter, cfg, key)) < 0)
  goto out;

 while ((error = git_config_next(&entry, iter)) == 0) {
  const char *fdot, *ldot;
  fdot = strchr(entry->name, '.');
  ldot = strrchr(entry->name, '.');

  if (git_strmap_exists(names, entry->value)) {
   git_error_set(GIT_ERROR_SUBMODULE,
       "duplicated submodule path '%s'", entry->value);
   error = -1;
   goto out;
  }

  git_buf_clear(&buf);
  git_buf_put(&buf, fdot + 1, ldot - fdot - 1);
  isvalid = git_submodule_name_is_valid(repo, buf.ptr, 0);
  if (isvalid < 0) {
   error = isvalid;
   goto out;
  }
  if (!isvalid)
   continue;

  if ((error = git_strmap_set(names, git__strdup(entry->value), git_buf_detach(&buf))) < 0) {
   git_error_set(GIT_ERROR_NOMEMORY, "error inserting submodule into hash table");
   error = -1;
   goto out;
  }
 }
 if (error == GIT_ITEROVER)
  error = 0;

 *out = names;
 names = ((void*)0);

out:
 free_submodule_names(names);
 git_buf_dispose(&buf);
 git_config_iterator_free(iter);
 return error;
}
