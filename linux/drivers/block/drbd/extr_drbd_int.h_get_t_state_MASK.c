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
struct drbd_thread {int t_state; } ;
typedef  enum drbd_thread_state { ____Placeholder_drbd_thread_state } drbd_thread_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static inline enum drbd_thread_state FUNC1(struct drbd_thread *thi)
{
	/* THINK testing the t_state seems to be uncritical in all cases
	 * (but thread_{start,stop}), so we can read it *without* the lock.
	 *	--lge */

	FUNC0();
	return thi->t_state;
}