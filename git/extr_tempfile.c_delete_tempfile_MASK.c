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
struct tempfile {TYPE_1__ filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tempfile*) ; 
 int /*<<< orphan*/  FUNC1 (struct tempfile*) ; 
 int /*<<< orphan*/  FUNC2 (struct tempfile*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct tempfile **tempfile_p)
{
	struct tempfile *tempfile = *tempfile_p;

	if (!FUNC2(tempfile))
		return;

	FUNC0(tempfile);
	FUNC3(tempfile->filename.buf);
	FUNC1(tempfile);
	*tempfile_p = NULL;
}