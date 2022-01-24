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
struct TYPE_3__ {struct item* item; } ;
typedef  TYPE_1__ tree_t ;
struct item {int dummy; } ;
typedef  int /*<<< orphan*/  hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  Root ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct item*,int,unsigned int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct item*) ; 

__attribute__((used)) static void FUNC4 (struct item *I, hash_t word, unsigned freqs) {
  tree_t *T = FUNC3 (Root, word, I);
  if (!T) {
    int y = FUNC1 ();
    Root = FUNC2 (Root, word, I, y, freqs);
  } else  {
    FUNC0 (T->item == I);
  }
}