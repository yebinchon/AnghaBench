#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* h; int /*<<< orphan*/ * remote_pid; } ;
struct TYPE_3__ {int /*<<< orphan*/  qid; } ;

/* Variables and functions */
 TYPE_2__* CQ ; 
 int SKIP_ALL_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

int FUNC3 (void) {
  int t = FUNC1 (*CQ->remote_pid, CQ->h->qid);
  FUNC0 (t >= 0);
  if (!t) {
    FUNC2 (2, "Duplicate query. Skipping.");
    return SKIP_ALL_BYTES;
  }
  return 0;
}