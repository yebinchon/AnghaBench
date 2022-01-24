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
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 struct tempfile* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*) ; 

struct tempfile *FUNC5(const char *filename_template, int suffixlen, int mode)
{
	struct tempfile *tempfile = FUNC3();

	FUNC4(&tempfile->filename, filename_template);
	tempfile->fd = FUNC2(tempfile->filename.buf, suffixlen, mode);
	if (tempfile->fd < 0) {
		FUNC1(tempfile);
		return NULL;
	}
	FUNC0(tempfile);
	return tempfile;
}