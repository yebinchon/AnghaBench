
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct heap_node {struct heap_node* right; struct heap_node* parent; struct heap_node* left; } ;
struct heap {struct heap_node* min; } ;



__attribute__((used)) static void heap_node_swap(struct heap* heap,
                           struct heap_node* parent,
                           struct heap_node* child) {
  struct heap_node* sibling;
  struct heap_node t;

  t = *parent;
  *parent = *child;
  *child = t;

  parent->parent = child;
  if (child->left == child) {
    child->left = parent;
    sibling = child->right;
  } else {
    child->right = parent;
    sibling = child->left;
  }
  if (sibling != ((void*)0))
    sibling->parent = child;

  if (parent->left != ((void*)0))
    parent->left->parent = parent;
  if (parent->right != ((void*)0))
    parent->right->parent = parent;

  if (child->parent == ((void*)0))
    heap->min = child;
  else if (child->parent->left == parent)
    child->parent->left = child;
  else
    child->parent->right = child;
}
