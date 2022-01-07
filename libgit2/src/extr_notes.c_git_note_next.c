
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_note_iterator ;
struct TYPE_3__ {int path; int id; } ;
typedef TYPE_1__ git_index_entry ;


 int git_iterator_advance (int *,int *) ;
 int git_iterator_current (TYPE_1__ const**,int *) ;
 int git_oid_cpy (int *,int *) ;
 int process_entry_path (int ,int *) ;

int git_note_next(
 git_oid* note_id,
 git_oid* annotated_id,
 git_note_iterator *it)
{
 int error;
 const git_index_entry *item;

 if ((error = git_iterator_current(&item, it)) < 0)
  return error;

 git_oid_cpy(note_id, &item->id);

 if (!(error = process_entry_path(item->path, annotated_id)))
  git_iterator_advance(((void*)0), it);

 return error;
}
