
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {char* glob; int loose; int pool; } ;
typedef TYPE_1__ refdb_fs_iter ;
struct TYPE_20__ {int commonpath; int iterator_flags; } ;
typedef TYPE_2__ refdb_fs_backend ;
struct TYPE_21__ {int flags; } ;
typedef TYPE_3__ git_iterator_options ;
typedef int git_iterator ;
struct TYPE_22__ {int path; } ;
typedef TYPE_4__ git_index_entry ;
struct TYPE_23__ {int ptr; } ;
typedef TYPE_5__ git_buf ;


 TYPE_5__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ;
 char* GIT_REFS_DIR ;
 scalar_t__ git__suffixcmp (char const*,char*) ;
 char* git_buf_cstr (TYPE_5__*) ;
 int git_buf_dispose (TYPE_5__*) ;
 int git_buf_printf (TYPE_5__*,char*,int ) ;
 int git_buf_put (TYPE_5__*,char const*,size_t) ;
 int git_buf_puts (TYPE_5__*,int ) ;
 int git_buf_sets (TYPE_5__*,char const*) ;
 int git_buf_truncate (TYPE_5__*,size_t) ;
 int git_iterator_advance (TYPE_4__ const**,int *) ;
 int git_iterator_for_filesystem (int **,int ,TYPE_3__*) ;
 int git_iterator_free (int *) ;
 char* git_pool_strdup (int *,char const*) ;
 int git_vector_insert (int *,char*) ;
 size_t strlen (char const*) ;
 scalar_t__ wildmatch (char*,char const*,int ) ;

__attribute__((used)) static int iter_load_loose_paths(refdb_fs_backend *backend, refdb_fs_iter *iter)
{
 int error = 0;
 git_buf path = GIT_BUF_INIT;
 git_iterator *fsit = ((void*)0);
 git_iterator_options fsit_opts = GIT_ITERATOR_OPTIONS_INIT;
 const git_index_entry *entry = ((void*)0);
 const char *ref_prefix = GIT_REFS_DIR;
 size_t ref_prefix_len = strlen(ref_prefix);

 if (!backend->commonpath)
  return 0;

 fsit_opts.flags = backend->iterator_flags;

 if (iter->glob) {
  const char *last_sep = ((void*)0);
  const char *pos;
  for (pos = iter->glob; *pos; ++pos) {
   switch (*pos) {
   case '?':
   case '*':
   case '[':
   case '\\':
    break;
   case '/':
    last_sep = pos;

   default:
    continue;
   }
   break;
  }
  if (last_sep) {
   ref_prefix = iter->glob;
   ref_prefix_len = (last_sep - ref_prefix) + 1;
  }
 }

 if ((error = git_buf_printf(&path, "%s/", backend->commonpath)) < 0 ||
  (error = git_buf_put(&path, ref_prefix, ref_prefix_len)) < 0) {
  git_buf_dispose(&path);
  return error;
 }

 if ((error = git_iterator_for_filesystem(&fsit, path.ptr, &fsit_opts)) < 0) {
  git_buf_dispose(&path);
  return (iter->glob && error == GIT_ENOTFOUND)? 0 : error;
 }

 error = git_buf_sets(&path, ref_prefix);

 while (!error && !git_iterator_advance(&entry, fsit)) {
  const char *ref_name;
  char *ref_dup;

  git_buf_truncate(&path, ref_prefix_len);
  git_buf_puts(&path, entry->path);
  ref_name = git_buf_cstr(&path);

  if (git__suffixcmp(ref_name, ".lock") == 0 ||
   (iter->glob && wildmatch(iter->glob, ref_name, 0) != 0))
   continue;

  ref_dup = git_pool_strdup(&iter->pool, ref_name);
  if (!ref_dup)
   error = -1;
  else
   error = git_vector_insert(&iter->loose, ref_dup);
 }

 git_iterator_free(fsit);
 git_buf_dispose(&path);

 return error;
}
