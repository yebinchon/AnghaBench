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
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  kp; } ;
struct kprobe_ctlblk {TYPE_1__ prev_kprobe; int /*<<< orphan*/  kprobe_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_kprobe ; 

__attribute__((used)) static void FUNC1(struct kprobe_ctlblk *kcb)
{
	FUNC0(current_kprobe, kcb->prev_kprobe.kp);
	kcb->kprobe_status = kcb->prev_kprobe.status;
}