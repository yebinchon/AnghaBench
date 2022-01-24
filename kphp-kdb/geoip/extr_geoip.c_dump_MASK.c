#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tree {int text; unsigned int extra; int num; int level; struct tree* right; struct tree* left; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (struct tree*,int) ; 
 int mode ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,...) ; 
 int /*<<< orphan*/  total_out ; 

void FUNC3 (struct tree *tree, int color) {
  if (!tree) {
    return;
  }
  FUNC0 (color);
  FUNC0 (tree->text);
  if (tree->text != color) {
    unsigned c = FUNC1 (tree, color);
    if (c >= tree->extra) {
      tree->text = color;
      tree->extra = c;
    }
  }
  if (color != tree->text) {
    if (tree->text != -1) {
      if (!mode) {
        FUNC2 ("%u %d %c%c\n", tree->num, tree->level, (char)(tree->text >> 8), (char)(tree->text & 255));
      } else if (mode == 1) {
        FUNC2 ("%u %d %02d\n", tree->num, tree->level, tree->text);
      } else if (mode == 2) {
        if (tree->text & 255) {
          FUNC2 ("%u %d %c%c/%c%c\n", tree->num, tree->level, (char)(tree->text >> 24), (char)(tree->text >> 16), (char )(tree->text >> 8), (char)(tree->text));
        } else {
          FUNC2 ("%u %d %c%c\n", tree->num, tree->level, (char)(tree->text >> 24), (char)(tree->text >> 16));
        }
      } else {
        FUNC0 (0);
      }
    } else {
      if (!mode || mode == 2) {
        FUNC2 ("%u %d %c%c\n", tree->num, tree->level, '?', '?');
      } else if (mode == 1) {
        FUNC2 ("%u %d 00\n", tree->num, tree->level);        
      } else {
        FUNC0 (0);
      }
    }
    total_out ++;
  }
  FUNC3 (tree->left, tree->text);
  FUNC3 (tree->right, tree->text);
}