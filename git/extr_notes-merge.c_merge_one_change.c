
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notes_tree {int dummy; } ;
struct notes_merge_pair {int remote; int obj; } ;
struct notes_merge_options {int strategy; int verbosity; } ;


 int BUG (char*) ;





 int add_note (struct notes_tree*,int *,int *,int ) ;
 int combine_notes_cat_sort_uniq ;
 int combine_notes_concatenate ;
 int combine_notes_overwrite ;
 int die (char*,...) ;
 int merge_one_change_manual (struct notes_merge_options*,struct notes_merge_pair*,struct notes_tree*) ;
 char* oid_to_hex (int *) ;
 int printf (char*,char*) ;

__attribute__((used)) static int merge_one_change(struct notes_merge_options *o,
       struct notes_merge_pair *p, struct notes_tree *t)
{





 switch (o->strategy) {
 case 131:
  return merge_one_change_manual(o, p, t);
 case 130:
  if (o->verbosity >= 2)
   printf("Using local notes for %s\n",
      oid_to_hex(&p->obj));

  return 0;
 case 129:
  if (o->verbosity >= 2)
   printf("Using remote notes for %s\n",
      oid_to_hex(&p->obj));
  if (add_note(t, &p->obj, &p->remote, combine_notes_overwrite))
   BUG("combine_notes_overwrite failed");
  return 0;
 case 128:
  if (o->verbosity >= 2)
   printf("Concatenating local and remote notes for %s\n",
       oid_to_hex(&p->obj));
  if (add_note(t, &p->obj, &p->remote, combine_notes_concatenate))
   die("failed to concatenate notes "
       "(combine_notes_concatenate)");
  return 0;
 case 132:
  if (o->verbosity >= 2)
   printf("Concatenating unique lines in local and remote "
    "notes for %s\n", oid_to_hex(&p->obj));
  if (add_note(t, &p->obj, &p->remote, combine_notes_cat_sort_uniq))
   die("failed to concatenate notes "
       "(combine_notes_cat_sort_uniq)");
  return 0;
 }
 die("Unknown strategy (%i).", o->strategy);
}
