
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct write_each_note_data {int next_non_note; struct tree_write_stack* root; } ;
struct TYPE_5__ {int len; int buf; } ;
struct tree_write_stack {char* path; TYPE_2__ buf; int * next; } ;
struct object_id {int dummy; } ;
struct notes_tree {int first_non_note; int initialized; } ;
struct TYPE_4__ {int hexsz; } ;


 int FOR_EACH_NOTE_DONT_UNPACK_SUBTREES ;
 int FOR_EACH_NOTE_YIELD_SUBTREES ;
 int assert (int ) ;
 struct notes_tree default_notes_tree ;
 scalar_t__ for_each_note (struct notes_tree*,int,int ,struct write_each_note_data*) ;
 int strbuf_init (TYPE_2__*,int) ;
 int strbuf_release (TYPE_2__*) ;
 TYPE_1__* the_hash_algo ;
 int tree_type ;
 scalar_t__ tree_write_stack_finish_subtree (struct tree_write_stack*) ;
 scalar_t__ write_each_non_note_until (int *,struct write_each_note_data*) ;
 int write_each_note ;
 scalar_t__ write_object_file (int ,int ,int ,struct object_id*) ;

int write_notes_tree(struct notes_tree *t, struct object_id *result)
{
 struct tree_write_stack root;
 struct write_each_note_data cb_data;
 int ret;
 int flags;

 if (!t)
  t = &default_notes_tree;
 assert(t->initialized);


 root.next = ((void*)0);
 strbuf_init(&root.buf, 256 * (32 + the_hash_algo->hexsz));
 root.path[0] = root.path[1] = '\0';
 cb_data.root = &root;
 cb_data.next_non_note = t->first_non_note;


 flags = FOR_EACH_NOTE_DONT_UNPACK_SUBTREES |
  FOR_EACH_NOTE_YIELD_SUBTREES;
 ret = for_each_note(t, flags, write_each_note, &cb_data) ||
       write_each_non_note_until(((void*)0), &cb_data) ||
       tree_write_stack_finish_subtree(&root) ||
       write_object_file(root.buf.buf, root.buf.len, tree_type, result);
 strbuf_release(&root.buf);
 return ret;
}
