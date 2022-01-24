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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static void
FUNC1(int is_warn, const char *msg) {
	if (!is_warn && !verbose)
		return;
	FUNC0(stderr, "%s: %s\n", is_warn?"WARN":"INFO", msg);
}