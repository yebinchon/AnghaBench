#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * item; } ;
typedef  TYPE_1__ tree_t ;
typedef  int /*<<< orphan*/  item_t ;
typedef  int /*<<< orphan*/  hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  Root ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5 (item_t *I, hash_t word, unsigned freqs) {
  tree_t *T = FUNC4 (Root, word, I);
  if (!T) {
    int y = FUNC2() << 1;
    if (FUNC1 (freqs)) { y |= 1; }
    Root = FUNC3 (Root, word, I, y);
  } else  {
    FUNC0 (T->item == I);
  }
}