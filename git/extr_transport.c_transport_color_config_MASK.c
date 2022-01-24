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
 int FUNC0 (char const**) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char**) ; 
 int /*<<< orphan*/ * transport_colors ; 
 int /*<<< orphan*/  transport_use_color ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	const char *keys[] = {
		"color.transport.reset",
		"color.transport.rejected"
	}, *key = "color.transport";
	char *value;
	int i;
	static int initialized;

	if (initialized)
		return 0;
	initialized = 1;

	if (!FUNC4(key, &value))
		transport_use_color = FUNC3(key, value);

	if (!FUNC5(transport_use_color))
		return 0;

	for (i = 0; i < FUNC0(keys); i++)
		if (!FUNC4(keys[i], &value)) {
			if (!value)
				return FUNC2(keys[i]);
			if (FUNC1(value, transport_colors[i]) < 0)
				return -1;
		}

	return 0;
}