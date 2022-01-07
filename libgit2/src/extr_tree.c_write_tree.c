
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int git_treebuilder ;
struct TYPE_10__ {scalar_t__ entry_count; int oid; } ;
typedef TYPE_1__ git_tree_cache ;
typedef int git_repository ;
typedef int git_oid ;
struct TYPE_11__ {char const* path; int mode; int id; } ;
typedef TYPE_2__ git_index_entry ;
struct TYPE_12__ {int tree; } ;
typedef TYPE_3__ git_index ;
typedef int git_buf ;


 int GIT_ERROR_CHECK_ALLOC (char*) ;
 int S_IFDIR ;
 int append_entry (int *,char const*,int *,int ,int) ;
 scalar_t__ find_next_dir (char const*,TYPE_3__*,size_t) ;
 int git__free (char*) ;
 char* git__strndup (char*,int) ;
 size_t git_index_entrycount (TYPE_3__*) ;
 TYPE_2__* git_index_get_byindex (TYPE_3__*,size_t) ;
 int git_oid_cpy (int *,int *) ;
 TYPE_1__* git_tree_cache_get (int ,char const*) ;
 int git_treebuilder_free (int *) ;
 int git_treebuilder_new (int **,int *,int *) ;
 scalar_t__ git_treebuilder_write_with_buffer (int *,int *,int *) ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int write_tree(
 git_oid *oid,
 git_repository *repo,
 git_index *index,
 const char *dirname,
 size_t start,
 git_buf *shared_buf)
{
 git_treebuilder *bld = ((void*)0);
 size_t i, entries = git_index_entrycount(index);
 int error;
 size_t dirname_len = strlen(dirname);
 const git_tree_cache *cache;

 cache = git_tree_cache_get(index->tree, dirname);
 if (cache != ((void*)0) && cache->entry_count >= 0){
  git_oid_cpy(oid, &cache->oid);
  return (int)find_next_dir(dirname, index, start);
 }

 if ((error = git_treebuilder_new(&bld, repo, ((void*)0))) < 0 || bld == ((void*)0))
  return -1;






 for (i = start; i < entries; ++i) {
  const git_index_entry *entry = git_index_get_byindex(index, i);
  const char *filename, *next_slash;
  if (strlen(entry->path) < dirname_len ||
      memcmp(entry->path, dirname, dirname_len) ||
      (dirname_len > 0 && entry->path[dirname_len] != '/')) {
   break;
  }

  filename = entry->path + dirname_len;
  if (*filename == '/')
   filename++;
  next_slash = strchr(filename, '/');
  if (next_slash) {
   git_oid sub_oid;
   int written;
   char *subdir, *last_comp;

   subdir = git__strndup(entry->path, next_slash - entry->path);
   GIT_ERROR_CHECK_ALLOC(subdir);


   written = write_tree(&sub_oid, repo, index, subdir, i, shared_buf);
   if (written < 0) {
    git__free(subdir);
    goto on_error;
   } else {
    i = written - 1;
   }







   last_comp = strrchr(subdir, '/');
   if (last_comp) {
    last_comp++;
   } else {
    last_comp = subdir;
   }

   error = append_entry(bld, last_comp, &sub_oid, S_IFDIR, 1);
   git__free(subdir);
   if (error < 0)
    goto on_error;
  } else {
   error = append_entry(bld, filename, &entry->id, entry->mode, 1);
   if (error < 0)
    goto on_error;
  }
 }

 if (git_treebuilder_write_with_buffer(oid, bld, shared_buf) < 0)
  goto on_error;

 git_treebuilder_free(bld);
 return (int)i;

on_error:
 git_treebuilder_free(bld);
 return -1;
}
