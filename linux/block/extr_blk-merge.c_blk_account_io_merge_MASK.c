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
struct request {int /*<<< orphan*/  q; struct hd_struct* part; } ;
struct hd_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hd_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct request*) ; 

__attribute__((used)) static void FUNC6(struct request *req)
{
	if (FUNC0(req)) {
		struct hd_struct *part;

		FUNC3();
		part = req->part;

		FUNC2(req->q, part, FUNC5(req));

		FUNC1(part);
		FUNC4();
	}
}