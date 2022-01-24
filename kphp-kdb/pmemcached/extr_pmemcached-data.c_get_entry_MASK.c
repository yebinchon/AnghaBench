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
struct TYPE_3__ {int /*<<< orphan*/ * x; } ;
typedef  TYPE_1__ tree_t ;
typedef  int /*<<< orphan*/  hash_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  tree ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 

hash_entry_t *FUNC1 (const char *key, int key_len) {
  tree_t *T = FUNC0 (tree, key, key_len);
  if (!T) {
    return 0;
  } else {
    return T->x;
  }
}