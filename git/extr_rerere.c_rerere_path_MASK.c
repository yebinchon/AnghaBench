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
struct rerere_id {scalar_t__ variant; } ;

/* Variables and functions */
 char const* FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct rerere_id const*) ; 

const char *FUNC2(const struct rerere_id *id, const char *file)
{
	if (!file)
		return FUNC0("rr-cache/%s", FUNC1(id));

	if (id->variant <= 0)
		return FUNC0("rr-cache/%s/%s", FUNC1(id), file);

	return FUNC0("rr-cache/%s/%s.%d",
			FUNC1(id), file, id->variant);
}