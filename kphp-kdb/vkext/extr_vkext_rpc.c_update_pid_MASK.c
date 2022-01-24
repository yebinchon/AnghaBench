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
struct TYPE_2__ {int ip; int /*<<< orphan*/  utime; scalar_t__ pid; scalar_t__ port; } ;

/* Variables and functions */
 TYPE_1__ PID ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2 (unsigned ip) { /* {{{ */
  if (!PID.pid) {
    PID.port = 0;
    PID.pid = FUNC0 ();
    PID.utime = FUNC1 (NULL);
  }
  if (!PID.ip && PID.ip != 0x7f000001) {
    PID.ip = ip;
  }
}