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
struct TYPE_2__ {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCOVER_FOLDER ; 
 int /*<<< orphan*/  SUB_REPOSITORY_FOLDER ; 
 TYPE_1__ ceiling_dirs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  discovered ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	FUNC0(FUNC1(&discovered, DISCOVER_FOLDER, 0, ceiling_dirs.ptr));
	FUNC0(FUNC1(&discovered, SUB_REPOSITORY_FOLDER, 0, ceiling_dirs.ptr));
}