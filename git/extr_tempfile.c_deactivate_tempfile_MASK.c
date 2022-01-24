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
struct tempfile {int /*<<< orphan*/  list; int /*<<< orphan*/  filename; scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tempfile*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct tempfile *tempfile)
{
	tempfile->active = 0;
	FUNC1(&tempfile->filename);
	FUNC2(&tempfile->list);
	FUNC0(tempfile);
}