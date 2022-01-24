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
struct TYPE_3__ {scalar_t__ fr_cnt; scalar_t__ fr_tree; int /*<<< orphan*/  user_id; } ;
typedef  TYPE_1__ user_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  rev_friends ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ reverse_friends_mode ; 

__attribute__((used)) static int FUNC2 (user_t *U) {
  if (!U) { return 0; }
  if (reverse_friends_mode) {
    rev_friends = FUNC1 (rev_friends, U->user_id, U->fr_tree);
  }
  FUNC0 (U->fr_tree);
  U->fr_tree = 0;
  U->fr_cnt = 0;
  return 1;
}