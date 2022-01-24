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
struct TYPE_3__ {unsigned char* id; } ;
typedef  TYPE_1__ git_oid ;

/* Variables and functions */
 size_t GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  GIT_OID_RAWSZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 

int FUNC4(git_oid *out, const char *str, size_t length)
{
	size_t p;
	int v;

	FUNC0(out && str);

	if (!length)
		return FUNC3("too short");

	if (length > GIT_OID_HEXSZ)
		return FUNC3("too long");

	FUNC2(out->id, 0, GIT_OID_RAWSZ);

	for (p = 0; p < length; p++) {
		v = FUNC1(str[p]);
		if (v < 0)
			return FUNC3("contains invalid characters");

		out->id[p / 2] |= (unsigned char)(v << (p % 2 ? 0 : 4));
	}

	return 0;
}