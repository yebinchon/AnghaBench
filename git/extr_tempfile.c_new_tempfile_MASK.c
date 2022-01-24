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
struct tempfile {int fd; int /*<<< orphan*/  filename; int /*<<< orphan*/  list; scalar_t__ owner; scalar_t__ active; int /*<<< orphan*/ * fp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tempfile* FUNC2 (int) ; 

__attribute__((used)) static struct tempfile *FUNC3(void)
{
	struct tempfile *tempfile = FUNC2(sizeof(*tempfile));
	tempfile->fd = -1;
	tempfile->fp = NULL;
	tempfile->active = 0;
	tempfile->owner = 0;
	FUNC0(&tempfile->list);
	FUNC1(&tempfile->filename, 0);
	return tempfile;
}