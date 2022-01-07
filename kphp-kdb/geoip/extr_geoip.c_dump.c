
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int text; unsigned int extra; int num; int level; struct tree* right; struct tree* left; } ;


 int assert (int) ;
 unsigned int count (struct tree*,int) ;
 int mode ;
 int printf (char*,int,int,...) ;
 int total_out ;

void dump (struct tree *tree, int color) {
  if (!tree) {
    return;
  }
  assert (color);
  assert (tree->text);
  if (tree->text != color) {
    unsigned c = count (tree, color);
    if (c >= tree->extra) {
      tree->text = color;
      tree->extra = c;
    }
  }
  if (color != tree->text) {
    if (tree->text != -1) {
      if (!mode) {
        printf ("%u %d %c%c\n", tree->num, tree->level, (char)(tree->text >> 8), (char)(tree->text & 255));
      } else if (mode == 1) {
        printf ("%u %d %02d\n", tree->num, tree->level, tree->text);
      } else if (mode == 2) {
        if (tree->text & 255) {
          printf ("%u %d %c%c/%c%c\n", tree->num, tree->level, (char)(tree->text >> 24), (char)(tree->text >> 16), (char )(tree->text >> 8), (char)(tree->text));
        } else {
          printf ("%u %d %c%c\n", tree->num, tree->level, (char)(tree->text >> 24), (char)(tree->text >> 16));
        }
      } else {
        assert (0);
      }
    } else {
      if (!mode || mode == 2) {
        printf ("%u %d %c%c\n", tree->num, tree->level, '?', '?');
      } else if (mode == 1) {
        printf ("%u %d 00\n", tree->num, tree->level);
      } else {
        assert (0);
      }
    }
    total_out ++;
  }
  dump (tree->left, tree->text);
  dump (tree->right, tree->text);
}
