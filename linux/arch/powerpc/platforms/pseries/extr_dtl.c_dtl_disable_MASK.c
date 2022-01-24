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
struct dtl {int /*<<< orphan*/  lock; scalar_t__ buf_entries; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  dtl_access_lock ; 
 int /*<<< orphan*/  dtl_cache ; 
 int /*<<< orphan*/  FUNC0 (struct dtl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dtl *dtl)
{
	FUNC3(&dtl->lock);
	FUNC0(dtl);
	FUNC1(dtl_cache, dtl->buf);
	dtl->buf = NULL;
	dtl->buf_entries = 0;
	FUNC4(&dtl->lock);
	FUNC2(&dtl_access_lock);
}