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
typedef  int /*<<< orphan*/  source_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int MAX_SOURCEFILES ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ ** sourceFiles ; 

int FUNC2(const char *filename)
{
	source_t *source;
	int i;

	for (i = 1; i < MAX_SOURCEFILES; i++)
	{
		if (!sourceFiles[i])
			break;
	} //end for
	if (i >= MAX_SOURCEFILES)
		return 0;
	FUNC1("");
	source = FUNC0(filename);
	if (!source)
		return 0;
	sourceFiles[i] = source;
	return i;
}