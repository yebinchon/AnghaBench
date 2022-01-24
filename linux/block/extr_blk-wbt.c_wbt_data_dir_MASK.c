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
struct request {int dummy; } ;

/* Variables and functions */
 int READ ; 
 int const REQ_OP_READ ; 
 int WRITE ; 
 scalar_t__ FUNC0 (int const) ; 
 int FUNC1 (struct request const*) ; 

__attribute__((used)) static int FUNC2(const struct request *rq)
{
	const int op = FUNC1(rq);

	if (op == REQ_OP_READ)
		return READ;
	else if (FUNC0(op))
		return WRITE;

	/* don't account */
	return -1;
}