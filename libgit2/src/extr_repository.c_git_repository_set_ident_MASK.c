#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ident_email; int /*<<< orphan*/  ident_name; } ;
typedef  TYPE_1__ git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4(git_repository *repo, const char *name, const char *email)
{
	char *tmp_name = NULL, *tmp_email = NULL;

	if (name) {
		tmp_name = FUNC2(name);
		FUNC0(tmp_name);
	}

	if (email) {
		tmp_email = FUNC2(email);
		FUNC0(tmp_email);
	}

	tmp_name = FUNC3(repo->ident_name, tmp_name);
	tmp_email = FUNC3(repo->ident_email, tmp_email);

	FUNC1(tmp_name);
	FUNC1(tmp_email);

	return 0;
}