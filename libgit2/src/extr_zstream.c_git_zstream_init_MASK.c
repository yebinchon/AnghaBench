#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ git_zstream_t ;
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  z; int /*<<< orphan*/  zerr; } ;
typedef  TYPE_1__ git_zstream ;

/* Variables and functions */
 scalar_t__ GIT_ZSTREAM_INFLATE ; 
 int /*<<< orphan*/  Z_DEFAULT_COMPRESSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 

int FUNC3(git_zstream *zstream, git_zstream_t type)
{
	zstream->type = type;

	if (zstream->type == GIT_ZSTREAM_INFLATE)
		zstream->zerr = FUNC1(&zstream->z);
	else
		zstream->zerr = FUNC0(&zstream->z, Z_DEFAULT_COMPRESSION);
	return FUNC2(zstream);
}