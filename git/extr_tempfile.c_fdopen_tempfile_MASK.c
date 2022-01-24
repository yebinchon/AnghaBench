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
struct tempfile {int /*<<< orphan*/ * fp; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct tempfile*) ; 

FILE *FUNC3(struct tempfile *tempfile, const char *mode)
{
	if (!FUNC2(tempfile))
		FUNC0("fdopen_tempfile() called for inactive object");
	if (tempfile->fp)
		FUNC0("fdopen_tempfile() called for open object");

	tempfile->fp = FUNC1(tempfile->fd, mode);
	return tempfile->fp;
}