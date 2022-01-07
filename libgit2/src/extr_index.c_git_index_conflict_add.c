
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int path; int mode; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_INDEX ;
 int GIT_INDEX_ENTRY_STAGE_SET (TYPE_1__*,unsigned short) ;
 int assert (int *) ;
 int git_error_clear () ;
 int git_error_set (int ,char*,unsigned short) ;
 int git_index_remove (int *,int ,int ) ;
 int index_entry_dup (TYPE_1__**,int *,TYPE_1__ const*) ;
 int index_entry_free (TYPE_1__*) ;
 int index_insert (int *,TYPE_1__**,int,int,int,int) ;
 int valid_filemode (int ) ;

int git_index_conflict_add(git_index *index,
 const git_index_entry *ancestor_entry,
 const git_index_entry *our_entry,
 const git_index_entry *their_entry)
{
 git_index_entry *entries[3] = { 0 };
 unsigned short i;
 int ret = 0;

 assert (index);

 if ((ancestor_entry &&
   (ret = index_entry_dup(&entries[0], index, ancestor_entry)) < 0) ||
  (our_entry &&
   (ret = index_entry_dup(&entries[1], index, our_entry)) < 0) ||
  (their_entry &&
   (ret = index_entry_dup(&entries[2], index, their_entry)) < 0))
  goto on_error;


 for (i = 0; i < 3; i++) {
  if (entries[i] && !valid_filemode(entries[i]->mode)) {
   git_error_set(GIT_ERROR_INDEX, "invalid filemode for stage %d entry",
    i + 1);
   ret = -1;
   goto on_error;
  }
 }


 for (i = 0; i < 3; i++) {
  if (entries[i] == ((void*)0))
   continue;

  if ((ret = git_index_remove(index, entries[i]->path, 0)) != 0) {
   if (ret != GIT_ENOTFOUND)
    goto on_error;

   git_error_clear();
   ret = 0;
  }
 }


 for (i = 0; i < 3; i++) {
  if (entries[i] == ((void*)0))
   continue;


  GIT_INDEX_ENTRY_STAGE_SET(entries[i], i + 1);

  if ((ret = index_insert(index, &entries[i], 1, 1, 1, 0)) < 0)
   goto on_error;

  entries[i] = ((void*)0);
 }

 return 0;

on_error:
 for (i = 0; i < 3; i++) {
  if (entries[i] != ((void*)0))
   index_entry_free(entries[i]);
 }

 return ret;
}
