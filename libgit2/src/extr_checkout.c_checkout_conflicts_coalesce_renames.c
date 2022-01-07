
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_index_name_entry ;
typedef int git_index ;
struct TYPE_8__ {int update_conflicts; int target; } ;
typedef TYPE_1__ checkout_data ;
struct TYPE_9__ {int name_collision; int one_to_two; int * ours; int * theirs; } ;
typedef TYPE_2__ checkout_conflictdata ;


 int checkout_conflictdata_empty ;
 int checkout_conflicts_load_byname_entry (TYPE_2__**,TYPE_2__**,TYPE_2__**,TYPE_1__*,int const*) ;
 size_t git_index_name_entrycount (int *) ;
 int * git_index_name_get_byindex (int *,size_t) ;
 int * git_iterator_index (int ) ;
 int git_vector_remove_matching (int *,int ,int *) ;

__attribute__((used)) static int checkout_conflicts_coalesce_renames(
 checkout_data *data)
{
 git_index *index;
 const git_index_name_entry *name_entry;
 checkout_conflictdata *ancestor_conflict, *our_conflict, *their_conflict;
 size_t i, names;
 int error = 0;

 if ((index = git_iterator_index(data->target)) == ((void*)0))
  return 0;


 names = git_index_name_entrycount(index);

 for (i = 0; i < names; i++) {
  name_entry = git_index_name_get_byindex(index, i);

  if ((error = checkout_conflicts_load_byname_entry(
   &ancestor_conflict, &our_conflict, &their_conflict,
   data, name_entry)) < 0)
   goto done;

  if (our_conflict && our_conflict != ancestor_conflict) {
   ancestor_conflict->ours = our_conflict->ours;
   our_conflict->ours = ((void*)0);

   if (our_conflict->theirs)
    our_conflict->name_collision = 1;

   if (our_conflict->name_collision)
    ancestor_conflict->name_collision = 1;
  }

  if (their_conflict && their_conflict != ancestor_conflict) {
   ancestor_conflict->theirs = their_conflict->theirs;
   their_conflict->theirs = ((void*)0);

   if (their_conflict->ours)
    their_conflict->name_collision = 1;

   if (their_conflict->name_collision)
    ancestor_conflict->name_collision = 1;
  }

  if (our_conflict && our_conflict != ancestor_conflict &&
   their_conflict && their_conflict != ancestor_conflict)
   ancestor_conflict->one_to_two = 1;
 }

 git_vector_remove_matching(
  &data->update_conflicts, checkout_conflictdata_empty, ((void*)0));

done:
 return error;
}
