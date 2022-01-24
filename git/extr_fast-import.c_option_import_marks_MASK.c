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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ import_marks_file ; 
 int import_marks_file_from_stream ; 
 int import_marks_file_ignore_missing ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(const char *marks,
					int from_stream, int ignore_missing)
{
	if (import_marks_file) {
		if (from_stream)
			FUNC0("Only one import-marks command allowed per stream");

		/* read previous mark file */
		if(!import_marks_file_from_stream)
			FUNC2();
	}

	import_marks_file = FUNC1(marks);
	FUNC3(import_marks_file);
	import_marks_file_from_stream = from_stream;
	import_marks_file_ignore_missing = ignore_missing;
}