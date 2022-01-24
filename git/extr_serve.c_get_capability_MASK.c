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
struct protocol_capability {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct protocol_capability*) ; 
 struct protocol_capability* capabilities ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,char const**) ; 

__attribute__((used)) static struct protocol_capability *FUNC2(const char *key)
{
	int i;

	if (!key)
		return NULL;

	for (i = 0; i < FUNC0(capabilities); i++) {
		struct protocol_capability *c = &capabilities[i];
		const char *out;
		if (FUNC1(key, c->name, &out) && (!*out || *out == '='))
			return c;
	}

	return NULL;
}