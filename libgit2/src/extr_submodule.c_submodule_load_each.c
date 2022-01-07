
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int mods; int repo; int * map; } ;
typedef TYPE_1__ lfc_data ;
struct TYPE_14__ {int name; } ;
typedef TYPE_2__ git_submodule ;
typedef int git_strmap ;
struct TYPE_15__ {char* name; } ;
typedef TYPE_3__ git_config_entry ;
struct TYPE_16__ {int ptr; } ;
typedef TYPE_4__ git_buf ;


 TYPE_4__ GIT_BUF_INIT ;
 scalar_t__ git__prefixcmp (char*,char*) ;
 int git_buf_dispose (TYPE_4__*) ;
 int git_buf_set (TYPE_4__*,char const*,int) ;
 scalar_t__ git_strmap_exists (int *,int ) ;
 int git_strmap_set (int *,int ,TYPE_2__*) ;
 int git_submodule_free (TYPE_2__*) ;
 int git_submodule_name_is_valid (int ,int ,int ) ;
 int strlen (char*) ;
 char* strrchr (char const*,char) ;
 int submodule_alloc (TYPE_2__**,int ,int ) ;
 int submodule_read_config (TYPE_2__*,int ) ;

__attribute__((used)) static int submodule_load_each(const git_config_entry *entry, void *payload)
{
 lfc_data *data = payload;
 const char *namestart, *property;
 git_strmap *map = data->map;
 git_buf name = GIT_BUF_INIT;
 git_submodule *sm;
 int error, isvalid;

 if (git__prefixcmp(entry->name, "submodule.") != 0)
  return 0;

 namestart = entry->name + strlen("submodule.");
 property = strrchr(namestart, '.');

 if (!property || (property == namestart))
  return 0;

 property++;

 if ((error = git_buf_set(&name, namestart, property - namestart -1)) < 0)
  return error;

 isvalid = git_submodule_name_is_valid(data->repo, name.ptr, 0);
 if (isvalid <= 0) {
  error = isvalid;
  goto done;
 }







 if (git_strmap_exists(map, name.ptr)) {
  error = 0;
  goto done;
 }

 if ((error = submodule_alloc(&sm, data->repo, name.ptr)) < 0)
  goto done;

 if ((error = submodule_read_config(sm, data->mods)) < 0) {
  git_submodule_free(sm);
  goto done;
 }

 if ((error = git_strmap_set(map, sm->name, sm)) < 0)
  goto done;

 error = 0;

done:
 git_buf_dispose(&name);
 return error;
}
