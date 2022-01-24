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
struct TYPE_2__ {char* downcased; char* id_string; char* camelcased; } ;

/* Variables and functions */
 int FSCK_MSG_MAX ; 
 TYPE_1__* msg_id_info ; 
 int FUNC0 (char const*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void)
{
	int i;

	if (msg_id_info[0].downcased)
		return;

	/* convert id_string to lower case, without underscores. */
	for (i = 0; i < FSCK_MSG_MAX; i++) {
		const char *p = msg_id_info[i].id_string;
		int len = FUNC0(p);
		char *q = FUNC2(len);

		msg_id_info[i].downcased = q;
		while (*p)
			if (*p == '_')
				p++;
			else
				*(q)++ = FUNC1(*(p)++);
		*q = '\0';

		p = msg_id_info[i].id_string;
		q = FUNC2(len);
		msg_id_info[i].camelcased = q;
		while (*p) {
			if (*p == '_') {
				p++;
				if (*p)
					*q++ = *p++;
			} else {
				*q++ = FUNC1(*p++);
			}
		}
		*q = '\0';
	}
}