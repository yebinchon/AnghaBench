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
struct TYPE_5__ {int /*<<< orphan*/  sign; int /*<<< orphan*/  offset; int /*<<< orphan*/  time; } ;
struct TYPE_6__ {TYPE_1__ when; int /*<<< orphan*/  email; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ git_signature ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**,char*) ; 

void FUNC5(void)
{
	git_signature *sign;

	FUNC2(FUNC4(&sign, "Test User <test@test.tt> 1461698487 -0000"));
	FUNC1("Test User", sign->name);
	FUNC1("test@test.tt", sign->email);
	FUNC0(1461698487, sign->when.time);
	FUNC0(0, sign->when.offset);
	FUNC0('-', sign->when.sign);
	FUNC3(sign);
}