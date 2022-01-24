#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  h_idx; } ;
struct udp_target {int unack_size; int /*<<< orphan*/  confirm_tree; TYPE_1__ confirm_timer; } ;

/* Variables and functions */
 int START_WINDOW_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct udp_target*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct udp_target*) ; 

void FUNC5 (struct udp_target *S, int x) {
  if (!S->confirm_timer.h_idx) {
    FUNC1 (S);
  }
  if (!FUNC3 (S->confirm_tree, x)) {
    S->confirm_tree = FUNC2 (S->confirm_tree, x, FUNC0 ());
    S->unack_size ++;
    if (S->unack_size >= START_WINDOW_SIZE / 2000) {
      FUNC4 (S);
    }
  }
}