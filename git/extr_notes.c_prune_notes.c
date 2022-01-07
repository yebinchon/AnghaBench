
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notes_tree {int initialized; } ;
struct note_delete_list {struct note_delete_list* next; int sha1; } ;


 int NOTES_PRUNE_DRYRUN ;
 int NOTES_PRUNE_VERBOSE ;
 int assert (int ) ;
 struct notes_tree default_notes_tree ;
 int for_each_note (struct notes_tree*,int ,int ,struct note_delete_list**) ;
 char* hash_to_hex (int ) ;
 int printf (char*,char*) ;
 int prune_notes_helper ;
 int remove_note (struct notes_tree*,int ) ;

void prune_notes(struct notes_tree *t, int flags)
{
 struct note_delete_list *l = ((void*)0);

 if (!t)
  t = &default_notes_tree;
 assert(t->initialized);

 for_each_note(t, 0, prune_notes_helper, &l);

 while (l) {
  if (flags & NOTES_PRUNE_VERBOSE)
   printf("%s\n", hash_to_hex(l->sha1));
  if (!(flags & NOTES_PRUNE_DRYRUN))
   remove_note(t, l->sha1);
  l = l->next;
 }
}
