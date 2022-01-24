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
 int force_update ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,int) ; 
 int relative_marks_paths ; 
 int require_explicit_termination ; 
 scalar_t__ FUNC3 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(const char *feature, int from_stream)
{
	const char *arg;

	if (FUNC3(feature, "date-format=", &arg)) {
		FUNC0(arg);
	} else if (FUNC3(feature, "import-marks=", &arg)) {
		FUNC2(arg, from_stream, 0);
	} else if (FUNC3(feature, "import-marks-if-exists=", &arg)) {
		FUNC2(arg, from_stream, 1);
	} else if (FUNC3(feature, "export-marks=", &arg)) {
		FUNC1(arg);
	} else if (!FUNC4(feature, "alias")) {
		; /* Don't die - this feature is supported */
	} else if (!FUNC4(feature, "get-mark")) {
		; /* Don't die - this feature is supported */
	} else if (!FUNC4(feature, "cat-blob")) {
		; /* Don't die - this feature is supported */
	} else if (!FUNC4(feature, "relative-marks")) {
		relative_marks_paths = 1;
	} else if (!FUNC4(feature, "no-relative-marks")) {
		relative_marks_paths = 0;
	} else if (!FUNC4(feature, "done")) {
		require_explicit_termination = 1;
	} else if (!FUNC4(feature, "force")) {
		force_update = 1;
	} else if (!FUNC4(feature, "notes") || !FUNC4(feature, "ls")) {
		; /* do nothing; we have the feature */
	} else {
		return 0;
	}

	return 1;
}