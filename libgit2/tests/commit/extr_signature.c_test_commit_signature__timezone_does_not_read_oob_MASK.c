#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  time; } ;
struct TYPE_8__ {TYPE_1__ when; int /*<<< orphan*/  email; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ git_signature ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char const**,char const*,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (char const*) ; 

void FUNC8(void)
{
	const char *header = "A <a@example.com> 1461698487 +1234", *header_end;
	git_signature *sig;

	/* Let the buffer end midway between the timezone offeset's "+12" and "34" */
	header_end = header + FUNC7(header) - 2;

	sig = FUNC4(1, sizeof(git_signature));
	FUNC0(sig);

	FUNC3(FUNC5(sig, &header, header_end, NULL, '\0'));
	FUNC2(sig->name, "A");
	FUNC2(sig->email, "a@example.com");
	FUNC1(sig->when.time, 1461698487);
	FUNC1(sig->when.offset, 12);

	FUNC6(sig);
}