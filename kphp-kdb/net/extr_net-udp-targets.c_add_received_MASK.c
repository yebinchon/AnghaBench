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
struct udp_target {int received_prefix; scalar_t__ received_tree; } ;
struct TYPE_2__ {int x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct udp_target*) ; 
 int /*<<< orphan*/  FUNC3 (struct udp_target*) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 TYPE_1__* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int,int /*<<< orphan*/ ) ; 

void FUNC7 (struct udp_target *S, int x) {
  if (x == S->received_prefix + 1) {
    S->received_prefix ++;
    if (S->received_tree) {
      while (S->received_tree) {
        int y = FUNC5 (S->received_tree)->x;
        FUNC0 (y >= S->received_prefix + 1);
        if (y == S->received_prefix + 1) {
          S->received_tree = FUNC4 (S->received_tree, y);
          S->received_prefix ++;
        } else {
          break;
        }
      }
      if (!S->received_tree) {
        FUNC3 (S);
      }
    }
  } else {
    if (!S->received_tree) {
      FUNC2 (S);
    }
    S->received_tree = FUNC6 (S->received_tree, x, FUNC1 ());
  }
}