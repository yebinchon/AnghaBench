
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* path; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 size_t git_index_entrycount (int *) ;
 TYPE_1__* git_index_get_byindex (int *,size_t) ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static size_t find_next_dir(const char *dirname, git_index *index, size_t start)
{
 size_t dirlen, i, entries = git_index_entrycount(index);

 dirlen = strlen(dirname);
 for (i = start; i < entries; ++i) {
  const git_index_entry *entry = git_index_get_byindex(index, i);
  if (strlen(entry->path) < dirlen ||
      memcmp(entry->path, dirname, dirlen) ||
   (dirlen > 0 && entry->path[dirlen] != '/')) {
   break;
  }
 }

 return i;
}
