
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int text; double extra; struct tree* right; struct tree* left; } ;



double count (struct tree *tree, int text) {
  if (!tree) {
    return 0;
  }
  if (tree->text == text) {
    return tree->extra;
  }
  if (tree->text != 0) {
    return 0;
  }
  return count (tree->left, text) + count (tree->right, text);
}
