
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* path; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_11__ {scalar_t__ (* entries_cmp_path ) (char*,char const*) ;int entries; } ;
typedef TYPE_2__ git_index ;


 int GIT_INDEX_ENTRY_STAGE (TYPE_1__ const*) ;
 int assert (int ) ;
 size_t git_index_entrycount (TYPE_2__*) ;
 TYPE_1__* git_vector_get (int *,size_t) ;
 scalar_t__ stub1 (char*,char const*) ;

__attribute__((used)) static int index_conflict__get_byindex(
 const git_index_entry **ancestor_out,
 const git_index_entry **our_out,
 const git_index_entry **their_out,
 git_index *index,
 size_t n)
{
 const git_index_entry *conflict_entry;
 const char *path = ((void*)0);
 size_t count;
 int stage, len = 0;

 assert(ancestor_out && our_out && their_out && index);

 *ancestor_out = ((void*)0);
 *our_out = ((void*)0);
 *their_out = ((void*)0);

 for (count = git_index_entrycount(index); n < count; ++n) {
  conflict_entry = git_vector_get(&index->entries, n);

  if (path && index->entries_cmp_path(conflict_entry->path, path) != 0)
   break;

  stage = GIT_INDEX_ENTRY_STAGE(conflict_entry);
  path = conflict_entry->path;

  switch (stage) {
  case 3:
   *their_out = conflict_entry;
   len++;
   break;
  case 2:
   *our_out = conflict_entry;
   len++;
   break;
  case 1:
   *ancestor_out = conflict_entry;
   len++;
   break;
  default:
   break;
  };
 }

 return len;
}
