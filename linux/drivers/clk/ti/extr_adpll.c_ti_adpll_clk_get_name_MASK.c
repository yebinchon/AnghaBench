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
struct ti_adpll_data {int /*<<< orphan*/  pa; int /*<<< orphan*/  dev; int /*<<< orphan*/  np; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static const char *FUNC4(struct ti_adpll_data *d,
					 int output_index,
					 const char *postfix)
{
	const char *name;
	int err;

	if (output_index >= 0) {
		err = FUNC1(d->np,
						    "clock-output-names",
						    output_index,
						    &name);
		if (err)
			return NULL;
	} else {
		const char *base_name = "adpll";
		char *buf;

		buf = FUNC0(d->dev, 8 + 1 + FUNC3(base_name) + 1 +
				    FUNC3(postfix), GFP_KERNEL);
		if (!buf)
			return NULL;
		FUNC2(buf, "%08lx.%s.%s", d->pa, base_name, postfix);
		name = buf;
	}

	return name;
}