
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int_node {void** a; } ;


 struct int_node* CLR_PTR_TYPE (void*) ;
 scalar_t__ GET_PTR_TYPE (void*) ;
 scalar_t__ PTR_TYPE_NOTE ;
 scalar_t__ PTR_TYPE_NULL ;
 int assert (int) ;
 int free (struct int_node*) ;

__attribute__((used)) static int note_tree_consolidate(struct int_node *tree,
 struct int_node *parent, unsigned char index)
{
 unsigned int i;
 void *p = ((void*)0);

 assert(tree && parent);
 assert(CLR_PTR_TYPE(parent->a[index]) == tree);

 for (i = 0; i < 16; i++) {
  if (GET_PTR_TYPE(tree->a[i]) != PTR_TYPE_NULL) {
   if (p)
    return -2;
   p = tree->a[i];
  }
 }

 if (p && (GET_PTR_TYPE(p) != PTR_TYPE_NOTE))
  return -2;

 parent->a[index] = p;
 free(tree);
 return 0;
}
