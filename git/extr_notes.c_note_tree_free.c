
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int_node {void** a; } ;


 struct int_node* CLR_PTR_TYPE (void*) ;
 int GET_PTR_TYPE (void*) ;



 int free (struct int_node*) ;

__attribute__((used)) static void note_tree_free(struct int_node *tree)
{
 unsigned int i;
 for (i = 0; i < 16; i++) {
  void *p = tree->a[i];
  switch (GET_PTR_TYPE(p)) {
  case 130:
   note_tree_free(CLR_PTR_TYPE(p));

  case 129:
  case 128:
   free(CLR_PTR_TYPE(p));
  }
 }
}
