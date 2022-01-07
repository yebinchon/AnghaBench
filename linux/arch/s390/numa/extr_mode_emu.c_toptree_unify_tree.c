
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toptree {int dummy; } ;


 int emu_nodes ;
 int toptree_get_child (struct toptree*,int) ;
 int toptree_unify (struct toptree*) ;

__attribute__((used)) static void toptree_unify_tree(struct toptree *tree)
{
 int nid;

 toptree_unify(tree);
 for (nid = 0; nid < emu_nodes; nid++)
  toptree_get_child(tree, nid);
}
