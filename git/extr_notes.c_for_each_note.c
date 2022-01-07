
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notes_tree {int root; int initialized; } ;
typedef int each_note_fn ;


 int assert (int ) ;
 struct notes_tree default_notes_tree ;
 int for_each_note_helper (struct notes_tree*,int ,int ,int ,int,int ,void*) ;

int for_each_note(struct notes_tree *t, int flags, each_note_fn fn,
  void *cb_data)
{
 if (!t)
  t = &default_notes_tree;
 assert(t->initialized);
 return for_each_note_helper(t, t->root, 0, 0, flags, fn, cb_data);
}
