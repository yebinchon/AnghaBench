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
struct TYPE_4__ {int /*<<< orphan*/  email; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_signature ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,char const*,char const*,int,int) ; 

__attribute__((used)) static void FUNC4(
	const char *expected_name,
	const char *expected_email,
	const char *name,
	const char *email)
{
	git_signature *sign;

	FUNC1(FUNC3(&sign, name, email, 1234567890, 60));
	FUNC0(expected_name, sign->name);
	FUNC0(expected_email, sign->email);

	FUNC2(sign);
}