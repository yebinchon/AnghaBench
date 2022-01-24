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
 int /*<<< orphan*/  ALLOW_ANY_SHA1 ; 
 int /*<<< orphan*/  ALLOW_REACHABLE_SHA1 ; 
 int /*<<< orphan*/  ALLOW_TIP_SHA1 ; 
 scalar_t__ CONFIG_SCOPE_REPO ; 
 void* allow_filter ; 
 void* allow_ref_in_want ; 
 void* allow_sideband_all ; 
 int /*<<< orphan*/  allow_unadvertised_object_request ; 
 scalar_t__ FUNC0 () ; 
 void* FUNC1 (char const*,char const*) ; 
 int FUNC2 (char const*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int keepalive ; 
 int /*<<< orphan*/  pack_objects_hook ; 
 int FUNC4 (char const*,char const*,char*) ; 
 void* precomposed_unicode ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static int FUNC6(const char *var, const char *value, void *unused)
{
	if (!FUNC5("uploadpack.allowtipsha1inwant", var)) {
		if (FUNC1(var, value))
			allow_unadvertised_object_request |= ALLOW_TIP_SHA1;
		else
			allow_unadvertised_object_request &= ~ALLOW_TIP_SHA1;
	} else if (!FUNC5("uploadpack.allowreachablesha1inwant", var)) {
		if (FUNC1(var, value))
			allow_unadvertised_object_request |= ALLOW_REACHABLE_SHA1;
		else
			allow_unadvertised_object_request &= ~ALLOW_REACHABLE_SHA1;
	} else if (!FUNC5("uploadpack.allowanysha1inwant", var)) {
		if (FUNC1(var, value))
			allow_unadvertised_object_request |= ALLOW_ANY_SHA1;
		else
			allow_unadvertised_object_request &= ~ALLOW_ANY_SHA1;
	} else if (!FUNC5("uploadpack.keepalive", var)) {
		keepalive = FUNC2(var, value);
		if (!keepalive)
			keepalive = -1;
	} else if (!FUNC5("uploadpack.allowfilter", var)) {
		allow_filter = FUNC1(var, value);
	} else if (!FUNC5("uploadpack.allowrefinwant", var)) {
		allow_ref_in_want = FUNC1(var, value);
	} else if (!FUNC5("uploadpack.allowsidebandall", var)) {
		allow_sideband_all = FUNC1(var, value);
	} else if (!FUNC5("core.precomposeunicode", var)) {
		precomposed_unicode = FUNC1(var, value);
	}

	if (FUNC0() != CONFIG_SCOPE_REPO) {
		if (!FUNC5("uploadpack.packobjectshook", var))
			return FUNC3(&pack_objects_hook, var, value);
	}

	return FUNC4(var, value, "uploadpack");
}