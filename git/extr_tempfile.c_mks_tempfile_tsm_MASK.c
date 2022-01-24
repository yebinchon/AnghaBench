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
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct tempfile {scalar_t__ fd; TYPE_1__ filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tempfile*) ; 
 int /*<<< orphan*/  FUNC1 (struct tempfile*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 struct tempfile* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char const*,char const*) ; 

struct tempfile *FUNC6(const char *filename_template, int suffixlen, int mode)
{
	struct tempfile *tempfile = FUNC4();
	const char *tmpdir;

	tmpdir = FUNC2("TMPDIR");
	if (!tmpdir)
		tmpdir = "/tmp";

	FUNC5(&tempfile->filename, "%s/%s", tmpdir, filename_template);
	tempfile->fd = FUNC3(tempfile->filename.buf, suffixlen, mode);
	if (tempfile->fd < 0) {
		FUNC1(tempfile);
		return NULL;
	}
	FUNC0(tempfile);
	return tempfile;
}