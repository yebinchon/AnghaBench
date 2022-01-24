#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  blen; int /*<<< orphan*/  bytes; int /*<<< orphan*/  file; int /*<<< orphan*/  dir; } ;
typedef  TYPE_1__ object_data ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  GIT_OBJECT_DIR_MODE ; 
 int S_IREAD ; 
 int S_IWRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(object_data *d)
{
	int fd;

	if (FUNC4(d->dir, GIT_OBJECT_DIR_MODE) < 0)
		FUNC0(errno == EEXIST);

	FUNC0((fd = FUNC3(d->file, S_IREAD | S_IWRITE)) >= 0);
	FUNC1(FUNC5(fd, d->bytes, d->blen));

	FUNC2(fd);
}