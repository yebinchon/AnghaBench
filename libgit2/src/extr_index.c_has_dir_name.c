
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {char* path; } ;
struct entry_internal {size_t pathlen; char* path; TYPE_2__ const entry; } ;
typedef TYPE_2__ git_index_entry ;
struct TYPE_9__ {size_t length; struct entry_internal** contents; } ;
struct TYPE_11__ {TYPE_1__ entries; } ;
typedef TYPE_3__ git_index ;


 int GIT_INDEX_ENTRY_STAGE (TYPE_2__ const*) ;
 int index_find (size_t*,TYPE_3__*,char const*,size_t,int) ;
 scalar_t__ index_remove_entry (TYPE_3__*,size_t) ;
 scalar_t__ memcmp (char*,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static int has_dir_name(git_index *index,
  const git_index_entry *entry, int ok_to_replace)
{
 int stage = GIT_INDEX_ENTRY_STAGE(entry);
 const char *name = entry->path;
 const char *slash = name + strlen(name);

 for (;;) {
  size_t len, pos;

  for (;;) {
   if (*--slash == '/')
    break;
   if (slash <= entry->path)
    return 0;
  }
  len = slash - name;

  if (!index_find(&pos, index, name, len, stage)) {
   if (!ok_to_replace)
    return -1;

   if (index_remove_entry(index, pos) < 0)
    break;
   continue;
  }






  for (; pos < index->entries.length; ++pos) {
   struct entry_internal *p = index->entries.contents[pos];

   if (p->pathlen <= len ||
       p->path[len] != '/' ||
       memcmp(p->path, name, len))
    break;

   if (GIT_INDEX_ENTRY_STAGE(&p->entry) == stage)
    return 0;
  }
 }

 return 0;
}
