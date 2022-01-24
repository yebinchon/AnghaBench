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
struct request {int /*<<< orphan*/  q; } ;

/* Variables and functions */
 scalar_t__ REQ_OP_DISCARD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct request*) ; 

__attribute__((used)) static inline bool FUNC2(struct request *req)
{
	if (FUNC1(req) == REQ_OP_DISCARD &&
	    FUNC0(req->q) > 1)
		return true;
	return false;
}