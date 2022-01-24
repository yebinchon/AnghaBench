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
struct connection {int dummy; } ;

/* Variables and functions */
 scalar_t__ CHILDREN_RENEW_TIME ; 
 int ID_MASK ; 
 scalar_t__ JOIN_RENEW_TIME ; 
 scalar_t__ LAST_CHILDREN_GET_TIME ; 
 scalar_t__ LAST_STATS_TIME ; 
 int NODE_ID ; 
 scalar_t__ STATS_RENEW_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct connection* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_targ ; 
 scalar_t__ precise_now ; 
 int /*<<< orphan*/  FUNC2 (struct connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5 (void) {
  if (((NODE_ID & ID_MASK) && LAST_CHILDREN_GET_TIME + CHILDREN_RENEW_TIME < precise_now) || 
    (!(NODE_ID & ID_MASK) && LAST_CHILDREN_GET_TIME + JOIN_RENEW_TIME < precise_now)) {
    struct connection *c = FUNC1 (main_targ);
    if (c) {
      LAST_CHILDREN_GET_TIME = precise_now;
      FUNC2 (c);
    }
  }
  if ((NODE_ID & ID_MASK) && LAST_STATS_TIME + STATS_RENEW_TIME < precise_now) {
    struct connection *c = FUNC1 (main_targ);
    if (c) {
      LAST_STATS_TIME = precise_now;
      FUNC3 (c);
    }
  }
  FUNC4 ();
  FUNC0 (0);
}