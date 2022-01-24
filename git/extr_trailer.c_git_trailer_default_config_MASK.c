#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  if_missing; int /*<<< orphan*/  if_exists; int /*<<< orphan*/  where; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ default_conf_info ; 
 int /*<<< orphan*/  separators ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*,char) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static int FUNC9(const char *conf_key, const char *value, void *cb)
{
	const char *trailer_item, *variable_name;

	if (!FUNC1(conf_key, "trailer.", &trailer_item))
		return 0;

	variable_name = FUNC3(trailer_item, '.');
	if (!variable_name) {
		if (!FUNC2(trailer_item, "where")) {
			if (FUNC6(&default_conf_info.where,
					      value) < 0)
				FUNC7(FUNC0("unknown value '%s' for key '%s'"),
					value, conf_key);
		} else if (!FUNC2(trailer_item, "ifexists")) {
			if (FUNC4(&default_conf_info.if_exists,
						  value) < 0)
				FUNC7(FUNC0("unknown value '%s' for key '%s'"),
					value, conf_key);
		} else if (!FUNC2(trailer_item, "ifmissing")) {
			if (FUNC5(&default_conf_info.if_missing,
						   value) < 0)
				FUNC7(FUNC0("unknown value '%s' for key '%s'"),
					value, conf_key);
		} else if (!FUNC2(trailer_item, "separators")) {
			separators = FUNC8(value);
		}
	}
	return 0;
}