
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct notes_tree {TYPE_1__* ref; TYPE_1__* prev_non_note; TYPE_1__* first_non_note; TYPE_1__* root; } ;
struct TYPE_3__ {struct TYPE_3__* path; struct TYPE_3__* next; } ;


 struct notes_tree default_notes_tree ;
 int free (TYPE_1__*) ;
 int memset (struct notes_tree*,int ,int) ;
 int note_tree_free (TYPE_1__*) ;

void free_notes(struct notes_tree *t)
{
 if (!t)
  t = &default_notes_tree;
 if (t->root)
  note_tree_free(t->root);
 free(t->root);
 while (t->first_non_note) {
  t->prev_non_note = t->first_non_note->next;
  free(t->first_non_note->path);
  free(t->first_non_note);
  t->first_non_note = t->prev_non_note;
 }
 free(t->ref);
 memset(t, 0, sizeof(struct notes_tree));
}
