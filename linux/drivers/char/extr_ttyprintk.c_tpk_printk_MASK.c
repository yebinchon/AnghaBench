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

/* Variables and functions */
 int TPK_STR_SIZE ; 
 char* tpk_buffer ; 
 int tpk_curr ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static int FUNC1(const unsigned char *buf, int count)
{
	int i = tpk_curr;

	if (buf == NULL) {
		FUNC0();
		return i;
	}

	for (i = 0; i < count; i++) {
		if (tpk_curr >= TPK_STR_SIZE) {
			/* end of tmp buffer reached: cut the message in two */
			tpk_buffer[tpk_curr++] = '\\';
			FUNC0();
		}

		switch (buf[i]) {
		case '\r':
			FUNC0();
			if ((i + 1) < count && buf[i + 1] == '\n')
				i++;
			break;
		case '\n':
			FUNC0();
			break;
		default:
			tpk_buffer[tpk_curr++] = buf[i];
			break;
		}
	}

	return count;
}