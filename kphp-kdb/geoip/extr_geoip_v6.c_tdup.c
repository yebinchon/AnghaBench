
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tree {int level; scalar_t__ text; TYPE_2__* left; TYPE_1__* right; int num; } ;
struct TYPE_4__ {int level; scalar_t__ extra; scalar_t__ text; scalar_t__ right; scalar_t__ left; int num; } ;
struct TYPE_3__ {int level; scalar_t__ extra; scalar_t__ text; scalar_t__ right; scalar_t__ left; int num; } ;


 int assert (int) ;
 scalar_t__ deg2 (int) ;
 void* malloc (int) ;
 int set_bit (int *,int) ;
 int total ;

void tdup (struct tree* tree) {
  assert (!tree->left);
  assert (!tree->right);
  assert (tree->level < 128);

  tree->left = malloc (sizeof (struct tree));
  tree->left->num = tree->num;
  tree->left->level = tree->level + 1;
  tree->left->left = 0;
  tree->left->right = 0;
  tree->left->extra = 0;
  tree->left->text = tree->text;
  tree->left->extra = deg2 (127 - tree->level);
  tree->right = malloc (sizeof (struct tree));
  tree->right->num = tree->num;
  set_bit (&tree->right->num, 127 - tree->level);

  tree->right->level = tree->level + 1;
  tree->right->left = 0;
  tree->right->right = 0;
  tree->right->extra = 0;
  tree->right->text = tree->text;
  tree->right->extra = tree->left->extra;
  tree->text = 0;
  total += 2;
}
