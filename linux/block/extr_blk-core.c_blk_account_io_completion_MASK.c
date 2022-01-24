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
struct request {struct hd_struct* part; } ;
struct hd_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct request*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hd_struct*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct request*) ; 
 int /*<<< orphan*/ * sectors ; 

void FUNC6(struct request *req, unsigned int bytes)
{
	if (FUNC0(req)) {
		const int sgrp = FUNC1(FUNC5(req));
		struct hd_struct *part;

		FUNC3();
		part = req->part;
		FUNC2(part, sectors[sgrp], bytes >> 9);
		FUNC4();
	}
}