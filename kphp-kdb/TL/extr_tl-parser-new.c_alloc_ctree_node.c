
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_combinator_tree {int dummy; } ;


 int assert (struct tl_combinator_tree*) ;
 int memset (struct tl_combinator_tree*,int ,int) ;
 struct tl_combinator_tree* zmalloc (int) ;

struct tl_combinator_tree *alloc_ctree_node (void) {
  struct tl_combinator_tree *T = zmalloc (sizeof (*T));
  assert (T);
  memset (T, 0, sizeof (*T));
  return T;
}
