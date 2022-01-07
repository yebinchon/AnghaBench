
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; } ;
typedef TYPE_1__ git_iterator ;
struct TYPE_9__ {int path; } ;
typedef TYPE_2__ git_index_entry ;


 int GIT_ITERATOR_IGNORE_CASE ;
 int GIT_ITERATOR_INCLUDE_CONFLICTS ;
 int GIT_ITEROVER ;
 int git_index_entry_is_conflict (TYPE_2__ const*) ;
 int git_iterator_advance (TYPE_2__ const**,TYPE_1__*) ;
 int strcasecmp (int ,int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int iterator_advance(
 const git_index_entry **entry,
 git_iterator *iterator)
{
 const git_index_entry *prev_entry = *entry;
 int cmp, error;






 while ((error = git_iterator_advance(entry, iterator)) == 0) {
  if (!(iterator->flags & GIT_ITERATOR_INCLUDE_CONFLICTS) ||
   !git_index_entry_is_conflict(prev_entry) ||
   !git_index_entry_is_conflict(*entry))
   break;

  cmp = (iterator->flags & GIT_ITERATOR_IGNORE_CASE) ?
   strcasecmp(prev_entry->path, (*entry)->path) :
   strcmp(prev_entry->path, (*entry)->path);

  if (cmp)
   break;
 }

 if (error == GIT_ITEROVER) {
  *entry = ((void*)0);
  error = 0;
 }

 return error;
}
