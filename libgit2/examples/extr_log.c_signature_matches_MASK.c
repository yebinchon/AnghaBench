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
struct TYPE_3__ {int /*<<< orphan*/  email; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_signature ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC1(const git_signature *sig, const char *filter) {
	if (filter == NULL)
		return 1;

	if (sig != NULL &&
		(FUNC0(sig->name, filter) != NULL ||
		FUNC0(sig->email, filter) != NULL))
		return 1;

	return 0;
}