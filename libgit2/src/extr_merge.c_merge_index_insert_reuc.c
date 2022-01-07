
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_6__ {int* mode; int * oid; } ;
typedef TYPE_1__ git_index_reuc_entry ;
struct TYPE_7__ {int path; int id; int mode; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_index ;


 int GIT_MERGE_INDEX_ENTRY_EXISTS (TYPE_2__ const) ;
 int git_index_reuc_add (int *,int ,int,int const*,int,int const*,int,int const*) ;
 TYPE_1__* git_index_reuc_get_bypath (int *,int ) ;

__attribute__((used)) static int merge_index_insert_reuc(
 git_index *index,
 size_t idx,
 const git_index_entry *entry)
{
 const git_index_reuc_entry *reuc;
 int mode[3] = { 0, 0, 0 };
 git_oid const *oid[3] = { ((void*)0), ((void*)0), ((void*)0) };
 size_t i;

 if (!GIT_MERGE_INDEX_ENTRY_EXISTS(*entry))
  return 0;

 if ((reuc = git_index_reuc_get_bypath(index, entry->path)) != ((void*)0)) {
  for (i = 0; i < 3; i++) {
   mode[i] = reuc->mode[i];
   oid[i] = &reuc->oid[i];
  }
 }

 mode[idx] = entry->mode;
 oid[idx] = &entry->id;

 return git_index_reuc_add(index, entry->path,
  mode[0], oid[0], mode[1], oid[1], mode[2], oid[2]);
}
