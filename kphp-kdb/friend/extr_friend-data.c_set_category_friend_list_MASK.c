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
struct TYPE_3__ {int cat_mask; int /*<<< orphan*/  fr_tree; } ;
typedef  TYPE_1__ user_t ;

/* Variables and functions */
 int* LiA ; 
 int* LiB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2 (user_t *U, int cat, int *List, int len) {
  int i;
  if (!U || cat <= 0 || cat >= 32 || (unsigned) len > 16384) {
    return -1;
  }
  FUNC0 (!len || List[0] > 0);
  for (i = 1; i < len; i++) {
    FUNC0 (List[i-1] < List[i]);
  }
  LiA = List;
  LiB = List + len;
  FUNC1 (U->fr_tree, 1 << cat);
  U->cat_mask |= (1 << cat);
  return 1;
}