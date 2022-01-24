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
struct TYPE_3__ {int* id; } ;
typedef  TYPE_1__ git_oid ;

/* Variables and functions */
 size_t GIT_OID_HEXSZ ; 
 char* FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * to_hex ; 

void FUNC2(char *str, size_t n, const git_oid *oid)
{
	size_t i, max_i;

	if (!oid) {
		FUNC1(str, 0, n);
		return;
	}
	if (n > GIT_OID_HEXSZ) {
		FUNC1(&str[GIT_OID_HEXSZ], 0, n - GIT_OID_HEXSZ);
		n = GIT_OID_HEXSZ;
	}

	max_i = n / 2;

	for (i = 0; i < max_i; i++)
		str = FUNC0(str, oid->id[i]);

	if (n & 1)
		*str++ = to_hex[oid->id[i] >> 4];
}