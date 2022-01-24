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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  have_dss ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 

__attribute__((used)) static void
FUNC2(void *addr, size_t size) {
	if (!have_dss || !FUNC0(addr)) {
		FUNC1(addr, size);
	}
}