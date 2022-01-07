
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t file_count; char** files; scalar_t__ error_unmatch; } ;
typedef TYPE_1__ ls_options ;
struct TYPE_7__ {char const* path; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_index ;


 int GIT_INDEX_STAGE_NORMAL ;
 int fprintf (int ,char*,...) ;
 size_t git_index_entrycount (int *) ;
 TYPE_2__* git_index_get_byindex (int *,size_t) ;
 TYPE_2__* git_index_get_bypath (int *,char const*,int ) ;
 int puts (char const*) ;
 int stderr ;

__attribute__((used)) static int print_paths(ls_options *opts, git_index *index)
{
 size_t i;
 const git_index_entry *entry;


 if (opts->file_count == 0) {
  size_t entry_count = git_index_entrycount(index);

  for (i = 0; i < entry_count; i++) {
   entry = git_index_get_byindex(index, i);
   puts(entry->path);
  }
  return 0;
 }


 for (i = 0; i < opts->file_count; ++i) {
  const char *path = opts->files[i];

  if ((entry = git_index_get_bypath(index, path, GIT_INDEX_STAGE_NORMAL)) != ((void*)0)) {
   puts(path);
  } else if (opts->error_unmatch) {
   fprintf(stderr, "error: pathspec '%s' did not match any file(s) known to git.\n", path);
   fprintf(stderr, "Did you forget to 'git add'?\n");
   return -1;
  }
 }

 return 0;
}
