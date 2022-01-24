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
struct lev_copyexec_result_connect {int /*<<< orphan*/  pid; int /*<<< orphan*/  hostname; int /*<<< orphan*/  hostname_length; int /*<<< orphan*/  ip; int /*<<< orphan*/  volume_id; int /*<<< orphan*/  random_tag; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  out ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 (struct lev_copyexec_result_connect *E) {
  if (FUNC0 ("LEV_COPYEXEC_RESULT_CONNECT")) {
    return;
  }
  FUNC1 (out, "0x%x\t0x%x\t%d\t%.*d\t%d\n", E->random_tag, E->volume_id, FUNC2 (E->ip), E->hostname_length, E->hostname, E->pid);
}