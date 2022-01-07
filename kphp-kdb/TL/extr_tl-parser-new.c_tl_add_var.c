
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_var {int type; scalar_t__ flags; struct tl_combinator_tree* ptr; int id; } ;
struct tl_combinator_tree {int dummy; } ;


 struct tl_var** last_num_var ;
 int lrand48 () ;
 size_t namespace_level ;
 int tree_insert_tl_var (int ,struct tl_var*,int ) ;
 scalar_t__ tree_lookup_tl_var (int ,struct tl_var*) ;
 int * vars ;
 int vkprintf (int,char*,char*) ;
 struct tl_var* zmalloc (int) ;
 int zstrdup (char*) ;

struct tl_var *tl_add_var (char *id, struct tl_combinator_tree *ptr, int type) {
  vkprintf (2, "Add var %s\n", id);
  struct tl_var *v = zmalloc (sizeof (*v));
  v->id = zstrdup (id);
  v->type = type;
  v->ptr = ptr;
  v->flags = 0;
  if (tree_lookup_tl_var (vars[namespace_level], v)) {
    return 0;
  }
  vars[namespace_level] = tree_insert_tl_var (vars[namespace_level], v, lrand48 ());
  if (type) {
    last_num_var[namespace_level] = v;
  }
  return v;
}
