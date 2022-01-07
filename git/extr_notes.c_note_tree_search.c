
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notes_tree {int dummy; } ;
struct TYPE_2__ {int hash; } ;
struct leaf_node {TYPE_1__ key_oid; } ;
struct int_node {void** a; } ;


 struct int_node* CLR_PTR_TYPE (void*) ;
 unsigned char GET_NIBBLE (unsigned char,unsigned char const*) ;
 int GET_PTR_TYPE (void*) ;


 int SUBTREE_SHA1_PREFIXCMP (unsigned char const*,int ) ;
 int free (struct leaf_node*) ;
 int load_subtree (struct notes_tree*,struct leaf_node*,struct int_node*,unsigned char) ;

__attribute__((used)) static void **note_tree_search(struct notes_tree *t, struct int_node **tree,
  unsigned char *n, const unsigned char *key_sha1)
{
 struct leaf_node *l;
 unsigned char i;
 void *p = (*tree)->a[0];

 if (GET_PTR_TYPE(p) == 128) {
  l = (struct leaf_node *) CLR_PTR_TYPE(p);
  if (!SUBTREE_SHA1_PREFIXCMP(key_sha1, l->key_oid.hash)) {

   (*tree)->a[0] = ((void*)0);
   load_subtree(t, l, *tree, *n);
   free(l);
   return note_tree_search(t, tree, n, key_sha1);
  }
 }

 i = GET_NIBBLE(*n, key_sha1);
 p = (*tree)->a[i];
 switch (GET_PTR_TYPE(p)) {
 case 129:
  *tree = CLR_PTR_TYPE(p);
  (*n)++;
  return note_tree_search(t, tree, n, key_sha1);
 case 128:
  l = (struct leaf_node *) CLR_PTR_TYPE(p);
  if (!SUBTREE_SHA1_PREFIXCMP(key_sha1, l->key_oid.hash)) {

   (*tree)->a[i] = ((void*)0);
   load_subtree(t, l, *tree, *n);
   free(l);
   return note_tree_search(t, tree, n, key_sha1);
  }

 default:
  return &((*tree)->a[i]);
 }
}
