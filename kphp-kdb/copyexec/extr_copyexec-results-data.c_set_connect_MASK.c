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
struct lev_copyexec_result_connect {int hostname_length; int /*<<< orphan*/  hostname; int /*<<< orphan*/  pid; int /*<<< orphan*/  ip; int /*<<< orphan*/  volume_id; int /*<<< orphan*/  random_tag; } ;
struct TYPE_3__ {scalar_t__ hostname; int /*<<< orphan*/  last_action_time; int /*<<< orphan*/  pid; int /*<<< orphan*/  ip; int /*<<< orphan*/  volume_id; } ;
typedef  TYPE_1__ host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  now ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int const) ; 

__attribute__((used)) static int FUNC8 (struct lev_copyexec_result_connect *E) {
  host_t *H = FUNC1 (E->random_tag, 1);
  H->volume_id = E->volume_id;
  H->ip = E->ip;
  H->pid = E->pid;
  H->last_action_time = now;
  const int l = E->hostname_length, old_l = (H->hostname) ? (int) FUNC6 (H->hostname) : -1;
  if (l != old_l || FUNC4 (H->hostname, E->hostname, l)) {
    if (H->hostname) {
      FUNC2 ("set_connect: hostname didn't matched. Old hostname = %s, new hostname = %.*s. (log_cur_pos: %lld)\n", H->hostname, E->hostname_length, E->hostname, FUNC3 ());
      FUNC0 (1);
    }
    H->hostname = FUNC7 (l + 1);
    FUNC5 (H->hostname, E->hostname, l);
  }
  return 0;
}