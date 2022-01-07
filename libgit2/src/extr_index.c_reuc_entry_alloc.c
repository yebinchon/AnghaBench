
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
struct reuc_entry_internal {size_t pathlen; int path; TYPE_1__ entry; } ;
typedef int git_index_reuc_entry ;


 scalar_t__ GIT_ADD_SIZET_OVERFLOW (size_t*,size_t,int) ;
 struct reuc_entry_internal* git__calloc (int,size_t) ;
 int memcpy (int ,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static git_index_reuc_entry *reuc_entry_alloc(const char *path)
{
 size_t pathlen = strlen(path),
  structlen = sizeof(struct reuc_entry_internal),
  alloclen;
 struct reuc_entry_internal *entry;

 if (GIT_ADD_SIZET_OVERFLOW(&alloclen, structlen, pathlen) ||
  GIT_ADD_SIZET_OVERFLOW(&alloclen, alloclen, 1))
  return ((void*)0);

 entry = git__calloc(1, alloclen);
 if (!entry)
  return ((void*)0);

 entry->pathlen = pathlen;
 memcpy(entry->path, path, pathlen);
 entry->entry.path = entry->path;

 return (git_index_reuc_entry *)entry;
}
