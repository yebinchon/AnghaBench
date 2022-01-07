
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toptree {int dummy; } ;


 int TOPOLOGY ;
 int panic (char*) ;
 struct toptree* toptree_alloc (int ,int) ;
 int toptree_get_child (struct toptree*,int) ;

__attribute__((used)) static struct toptree *toptree_new(int id, int nodes)
{
 struct toptree *tree;
 int nid;

 tree = toptree_alloc(TOPOLOGY, id);
 if (!tree)
  goto fail;
 for (nid = 0; nid < nodes; nid++) {
  if (!toptree_get_child(tree, nid))
   goto fail;
 }
 return tree;
fail:
 panic("NUMA emulation could not allocate topology");
}
