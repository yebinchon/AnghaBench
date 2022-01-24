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
 unsigned long big_file_threshold ; 
 int /*<<< orphan*/  FUNC0 (char const*,unsigned long*) ; 
 unsigned long max_packsize ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int show_stats ; 
 scalar_t__ FUNC4 (char const*,char*,char const**) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int FUNC7(const char *option)
{
	if (FUNC4(option, "max-pack-size=", &option)) {
		unsigned long v;
		if (!FUNC0(option, &v))
			return 0;
		if (v < 8192) {
			FUNC6("max-pack-size is now in bytes, assuming --max-pack-size=%lum", v);
			v *= 1024 * 1024;
		} else if (v < 1024 * 1024) {
			FUNC6("minimum max-pack-size is 1 MiB");
			v = 1024 * 1024;
		}
		max_packsize = v;
	} else if (FUNC4(option, "big-file-threshold=", &option)) {
		unsigned long v;
		if (!FUNC0(option, &v))
			return 0;
		big_file_threshold = v;
	} else if (FUNC4(option, "depth=", &option)) {
		FUNC2(option);
	} else if (FUNC4(option, "active-branches=", &option)) {
		FUNC1(option);
	} else if (FUNC4(option, "export-pack-edges=", &option)) {
		FUNC3(option);
	} else if (FUNC5(option, "quiet")) {
		show_stats = 0;
	} else if (FUNC5(option, "stats")) {
		show_stats = 1;
	} else {
		return 0;
	}

	return 1;
}