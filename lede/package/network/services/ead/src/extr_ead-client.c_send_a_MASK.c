#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ead_msg_number {int /*<<< orphan*/  data; } ;
struct TYPE_6__ {void* len; void* type; } ;
struct TYPE_5__ {scalar_t__ len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 TYPE_1__* A ; 
 struct ead_msg_number* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ EAD_TYPE_SEND_A ; 
 int /*<<< orphan*/  EAD_TYPE_SEND_B ; 
 int /*<<< orphan*/  handle_b ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* msg ; 
 int /*<<< orphan*/  number ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tc ; 

__attribute__((used)) static int
FUNC5(void)
{
	struct ead_msg_number *num = FUNC0(msg, number);
	A = FUNC4(tc);
	msg->type = FUNC1(EAD_TYPE_SEND_A);
	msg->len = FUNC1(sizeof(struct ead_msg_number) + A->len);
	FUNC2(num->data, A->data, A->len);
	return FUNC3(EAD_TYPE_SEND_B, handle_b, 1);
}