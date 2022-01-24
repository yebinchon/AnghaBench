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
 int opt_retain ; 
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 

bool
FUNC1(void *addr, size_t size) {
	if (!opt_retain) {
		FUNC0(addr, size);
	}
	return opt_retain;
}