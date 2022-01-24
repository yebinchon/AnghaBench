#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tree {int level; scalar_t__ text; TYPE_2__* left; TYPE_1__* right; int /*<<< orphan*/  num; } ;
struct TYPE_4__ {int level; scalar_t__ extra; scalar_t__ text; scalar_t__ right; scalar_t__ left; int /*<<< orphan*/  num; } ;
struct TYPE_3__ {int level; scalar_t__ extra; scalar_t__ text; scalar_t__ right; scalar_t__ left; int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int total ; 

void FUNC4 (struct tree* tree) {
  FUNC0 (!tree->left);
  FUNC0 (!tree->right);
  FUNC0 (tree->level < 128);
  //assert (tree->text == -1);
  tree->left = FUNC2 (sizeof (struct tree));
  tree->left->num = tree->num;
  tree->left->level = tree->level + 1;
  tree->left->left = 0;
  tree->left->right = 0;
  tree->left->extra = 0;
  tree->left->text = tree->text;
  tree->left->extra = FUNC1 (127 - tree->level);
  tree->right = FUNC2 (sizeof (struct tree));
  tree->right->num = tree->num; 
  FUNC3 (&tree->right->num, 127 - tree->level);
  //+ (1 << (31 - tree->level));
  tree->right->level = tree->level + 1;
  tree->right->left = 0;
  tree->right->right = 0;
  tree->right->extra = 0;
  tree->right->text = tree->text;
  tree->right->extra = tree->left->extra;
  tree->text = 0;
  total += 2;
}