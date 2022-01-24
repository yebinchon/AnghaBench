#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int offset; scalar_t__ time; } ;
struct git_signature {int /*<<< orphan*/  email; int /*<<< orphan*/  name; int /*<<< orphan*/  member_0; TYPE_1__ when; } ;
struct TYPE_7__ {char* string; int offset; scalar_t__ time; int /*<<< orphan*/  email; int /*<<< orphan*/  name; int /*<<< orphan*/  header; } ;
typedef  TYPE_2__ passing_signature_test_case ;
typedef  struct git_signature git_signature ;
struct TYPE_8__ {char* string; int /*<<< orphan*/  header; } ;
typedef  TYPE_3__ failing_signature_test_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* failing_signature_cases ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct git_signature*,char const**,char const*,int /*<<< orphan*/ ,char) ; 
 TYPE_2__* passing_signature_cases ; 
 size_t FUNC6 (char*) ; 

void FUNC7(void)
{
	passing_signature_test_case *passcase;
	failing_signature_test_case *failcase;

	for (passcase = passing_signature_cases; passcase->string != NULL; passcase++)
	{
		const char *str = passcase->string;
		size_t len = FUNC6(passcase->string);
		struct git_signature person = {0};

		FUNC3(FUNC5(&person, &str, str + len, passcase->header, '\n'));
		FUNC1(passcase->name, person.name);
		FUNC1(passcase->email, person.email);
		FUNC0((int)passcase->time, (int)person.when.time);
		FUNC0(passcase->offset, person.when.offset);
		FUNC4(person.name); FUNC4(person.email);
	}

	for (failcase = failing_signature_cases; failcase->string != NULL; failcase++)
	{
		const char *str = failcase->string;
		size_t len = FUNC6(failcase->string);
		git_signature person = {0};
		FUNC2(FUNC5(&person, &str, str + len, failcase->header, '\n'));
		FUNC4(person.name); FUNC4(person.email);
	}
}