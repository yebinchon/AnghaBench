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
struct git__dirent {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  entry; } ;
typedef  TYPE_1__ git__DIR ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,struct git__dirent**,int /*<<< orphan*/ *) ; 

struct git__dirent *FUNC1(git__DIR *d)
{
	struct git__dirent *result;
	if (FUNC0(d, &d->entry, &result, NULL) < 0)
		return NULL;
	return result;
}