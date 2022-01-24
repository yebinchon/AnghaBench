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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ *) ; 
 char* FUNC2 (long,unsigned long*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(const char *prefix, char first,
		       long line, unsigned long *ends, void *data,
		       const char *color, const char *reset, FILE *file)
{
	char *begin = FUNC2(line, ends, data);
	char *end = FUNC2(line+1, ends, data);
	int had_nl = 0;

	if (end > begin && end[-1] == '\n') {
		end--;
		had_nl = 1;
	}

	FUNC0(prefix, file);
	FUNC0(color, file);
	FUNC3(first, file);
	FUNC1(begin, 1, end-begin, file);
	FUNC0(reset, file);
	FUNC3('\n', file);
	if (!had_nl)
		FUNC0("\\ No newline at end of file\n", file);
}