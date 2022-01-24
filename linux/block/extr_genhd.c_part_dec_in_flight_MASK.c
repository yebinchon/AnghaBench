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
struct request_queue {int dummy; } ;
struct hd_struct {scalar_t__ partno; } ;
struct TYPE_2__ {struct hd_struct part0; } ;

/* Variables and functions */
 int /*<<< orphan*/ * in_flight ; 
 int /*<<< orphan*/  FUNC0 (struct hd_struct*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct hd_struct*) ; 
 scalar_t__ FUNC2 (struct request_queue*) ; 

void FUNC3(struct request_queue *q, struct hd_struct *part, int rw)
{
	if (FUNC2(q))
		return;

	FUNC0(part, in_flight[rw]);
	if (part->partno)
		FUNC0(&FUNC1(part)->part0, in_flight[rw]);
}