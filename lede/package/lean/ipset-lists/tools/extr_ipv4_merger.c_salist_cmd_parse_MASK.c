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
typedef  int /*<<< orphan*/  u32 ;
struct sa_open_data {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sa_open_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sa_open_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sa_open_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (char*,char) ; 

__attribute__((used)) static int FUNC8(struct sa_open_data *od, char *cmd, gfp_t gfp)
{
	char *a1 = NULL, *a2 = NULL;
	char *sep;
	char sc;
	int n = 32;

	/* Case 3: Append an item */
	
	/* Check IP description part: network segment or range? */
	if ((sep = FUNC7(cmd, '/'))) { }
	else if ((sep = FUNC7(cmd, '-'))) { }
	else if ((sep = FUNC7(cmd, ':'))) { }
	
	if (sep) {
		/* Describes a subnet or range. */
		sc = *sep;
		*sep = '\0';

		a1 = cmd;
		a2 = sep + 1;

		if (*a2 == '\0') {
			FUNC0(stderr, "Nothing after '%c'.\n", sc);
			return -EINVAL;
		}
	} else {
		/* Describes a single IP. */
		sc = '\0';
		a1 = cmd;
	}
	
	switch (sc) {
	case '/':
		/* 10.10.20.0/24 */
		/* ------------------------------------ */
		if (FUNC5(a2)) {
			FUNC2(od, FUNC4(a1), FUNC4(a2), gfp);
		} else {
			FUNC6(a2, "%d", &n);
			FUNC1(od, FUNC4(a1), n, gfp);
		}
		/* ------------------------------------ */
		break;
	case ':':
	case '-':
		/* 10.10.20.0-10.20.0.255 */
		/* ------------------------------------ */
		FUNC3(od, FUNC4(a1), FUNC4(a2), gfp);
		/* ------------------------------------ */
		break;
	default:
		if (FUNC5(a1)) {
			/* Single IP address. */
			u32 ip = FUNC4(a1);
			/* ------------------------------------ */
			FUNC3(od, ip, ip, gfp);
			/* ------------------------------------ */
		} else {
			FUNC0(stderr, "Invalid IP address '%s'.\n", a1);
			return -EINVAL;
		}
		break;
	}
	return 0;
}