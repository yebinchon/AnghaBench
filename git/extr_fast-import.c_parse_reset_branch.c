
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tag {struct tag* next_tag; int name; } ;
struct TYPE_5__ {int * tree; TYPE_1__* versions; } ;
struct branch {int name; scalar_t__ delete; TYPE_2__ branch_tree; int oid; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_4__ {int oid; } ;


 TYPE_3__ command_buf ;
 struct tag* first_tag ;
 struct tag* last_tag ;
 struct branch* lookup_branch (char const*) ;
 struct branch* new_branch (char const*) ;
 int oidclr (int *) ;
 int parse_from (struct branch*) ;
 int read_next_command () ;
 int release_tree_content_recursive (int *) ;
 scalar_t__ skip_prefix (int ,char*,char const**) ;
 int strcmp (int ,char const*) ;
 int unread_command_buf ;

__attribute__((used)) static void parse_reset_branch(const char *arg)
{
 struct branch *b;
 const char *tag_name;

 b = lookup_branch(arg);
 if (b) {
  oidclr(&b->oid);
  oidclr(&b->branch_tree.versions[0].oid);
  oidclr(&b->branch_tree.versions[1].oid);
  if (b->branch_tree.tree) {
   release_tree_content_recursive(b->branch_tree.tree);
   b->branch_tree.tree = ((void*)0);
  }
 }
 else
  b = new_branch(arg);
 read_next_command();
 parse_from(b);
 if (b->delete && skip_prefix(b->name, "refs/tags/", &tag_name)) {
  struct tag *t, *prev = ((void*)0);
  for (t = first_tag; t; t = t->next_tag) {
   if (!strcmp(t->name, tag_name))
    break;
   prev = t;
  }
  if (t) {
   if (prev)
    prev->next_tag = t->next_tag;
   else
    first_tag = t->next_tag;
   if (!t->next_tag)
    last_tag = prev;

  }
 }
 if (command_buf.len > 0)
  unread_command_buf = 1;
}
