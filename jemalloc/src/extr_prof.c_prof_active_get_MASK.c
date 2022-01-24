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
typedef  int /*<<< orphan*/  tsdn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int prof_active ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  prof_active_mtx ; 

bool
FUNC3(tsdn_t *tsdn) {
	bool prof_active_current;

	FUNC2();
	FUNC0(tsdn, &prof_active_mtx);
	prof_active_current = prof_active;
	FUNC1(tsdn, &prof_active_mtx);
	return prof_active_current;
}