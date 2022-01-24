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
struct udp_target_set {int state; int T_count; scalar_t__ T; struct udp_target* last; struct udp_target* S; } ;
struct udp_target {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__,struct udp_target*,int /*<<< orphan*/ ) ; 

void FUNC3 (struct udp_target_set *ST) {
  FUNC0 (ST->state == 2);
  struct udp_target *S = ST->S;
  ST->last = S;
  ST->T = 0;
  ST->T = FUNC2 (ST->T, S, FUNC1 ());
  ST->T_count = 1;
  ST->state = 3;
}