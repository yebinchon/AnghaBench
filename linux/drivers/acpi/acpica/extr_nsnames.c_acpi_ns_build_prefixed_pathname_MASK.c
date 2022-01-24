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
struct TYPE_2__ {scalar_t__ node; } ;
union acpi_generic_state {TYPE_1__ scope; } ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,char**) ; 
 char* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 

char *FUNC8(union acpi_generic_state *prefix_scope,
				      const char *internal_path)
{
	acpi_status status;
	char *full_path = NULL;
	char *external_path = NULL;
	char *prefix_path = NULL;
	u32 prefix_path_length = 0;

	/* If there is a prefix, get the pathname to it */

	if (prefix_scope && prefix_scope->scope.node) {
		prefix_path =
		    FUNC4(prefix_scope->scope.node,
						    TRUE);
		if (prefix_path) {
			prefix_path_length = FUNC7(prefix_path);
		}
	}

	status = FUNC3(ACPI_UINT32_MAX, internal_path,
					  NULL, &external_path);
	if (FUNC1(status)) {
		goto cleanup;
	}

	/* Merge the prefix path and the path. 2 is for one dot and trailing null */

	full_path =
	    FUNC0(prefix_path_length + FUNC7(external_path) +
				 2);
	if (!full_path) {
		goto cleanup;
	}

	/* Don't merge if the External path is already fully qualified */

	if (prefix_path && (*external_path != '\\') && (*external_path != '^')) {
		FUNC6(full_path, prefix_path);
		if (prefix_path[1]) {
			FUNC6(full_path, ".");
		}
	}

	FUNC5(external_path);
	FUNC6(full_path, external_path);

cleanup:
	if (prefix_path) {
		FUNC2(prefix_path);
	}
	if (external_path) {
		FUNC2(external_path);
	}

	return (full_path);
}