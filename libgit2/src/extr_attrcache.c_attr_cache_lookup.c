
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_11__ {char* ptr; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_12__ {TYPE_1__ tmp; } ;
typedef TYPE_2__ git_attr_session ;
typedef size_t git_attr_file_source ;
struct TYPE_13__ {int ** file; } ;
typedef TYPE_3__ git_attr_file_entry ;
typedef int git_attr_file ;
typedef int git_attr_cache ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_REFCOUNT_INC (int *) ;
 int attr_cache_lock (int *) ;
 TYPE_3__* attr_cache_lookup_entry (int *,char const*) ;
 int attr_cache_make_entry (TYPE_3__**,int *,char const*) ;
 int attr_cache_unlock (int *) ;
 int git__prefixcmp (char const*,char const*) ;
 int git_buf_dispose (TYPE_1__*) ;
 scalar_t__ git_buf_joinpath (TYPE_1__*,char const*,char const*) ;
 scalar_t__ git_path_root (char const*) ;
 int * git_repository_attr_cache (int *) ;
 char* git_repository_workdir (int *) ;
 int strlen (char const*) ;

__attribute__((used)) static int attr_cache_lookup(
 git_attr_file **out_file,
 git_attr_file_entry **out_entry,
 git_repository *repo,
 git_attr_session *attr_session,
 git_attr_file_source source,
 const char *base,
 const char *filename)
{
 int error = 0;
 git_buf path = GIT_BUF_INIT;
 const char *wd = git_repository_workdir(repo), *relfile;
 git_attr_cache *cache = git_repository_attr_cache(repo);
 git_attr_file_entry *entry = ((void*)0);
 git_attr_file *file = ((void*)0);


 if (base != ((void*)0) && git_path_root(filename) < 0) {
  git_buf *p = attr_session ? &attr_session->tmp : &path;

  if (git_buf_joinpath(p, base, filename) < 0)
   return -1;

  filename = p->ptr;
 }

 relfile = filename;
 if (wd && !git__prefixcmp(relfile, wd))
  relfile += strlen(wd);


 if ((error = attr_cache_lock(cache)) < 0)
  goto cleanup;

 entry = attr_cache_lookup_entry(cache, relfile);
 if (!entry)
  error = attr_cache_make_entry(&entry, repo, relfile);
 else if (entry->file[source] != ((void*)0)) {
  file = entry->file[source];
  GIT_REFCOUNT_INC(file);
 }

 attr_cache_unlock(cache);

cleanup:
 *out_file = file;
 *out_entry = entry;

 git_buf_dispose(&path);
 return error;
}
