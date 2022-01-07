
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_7__ {int path; } ;
typedef TYPE_1__ git_attr_file_entry ;
struct TYPE_8__ {int files; int pool; } ;
typedef TYPE_2__ git_attr_cache ;


 int git_attr_cache__alloc_file_entry (TYPE_1__**,int ,char const*,int *) ;
 TYPE_2__* git_repository_attr_cache (int *) ;
 int git_repository_workdir (int *) ;
 int git_strmap_set (int ,int ,TYPE_1__*) ;

__attribute__((used)) static int attr_cache_make_entry(
 git_attr_file_entry **out, git_repository *repo, const char *path)
{
 git_attr_cache *cache = git_repository_attr_cache(repo);
 git_attr_file_entry *entry = ((void*)0);
 int error;

 if ((error = git_attr_cache__alloc_file_entry(&entry, git_repository_workdir(repo),
            path, &cache->pool)) < 0)
  return error;

 if ((error = git_strmap_set(cache->files, entry->path, entry)) < 0)
  return error;

 *out = entry;
 return error;
}
