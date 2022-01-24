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
typedef  int /*<<< orphan*/  entry_buf ;

/* Variables and functions */
 unsigned int VIDEO_CURRENT_MODE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static unsigned int FUNC3(void)
{
	char entry_buf[4];
	int i, len = 0;
	int key;
	unsigned int v;

	do {
		key = FUNC0();

		if (key == '\b') {
			if (len > 0) {
				FUNC2("\b \b");
				len--;
			}
		} else if ((key >= '0' && key <= '9') ||
			   (key >= 'A' && key <= 'Z') ||
			   (key >= 'a' && key <= 'z')) {
			if (len < sizeof(entry_buf)) {
				entry_buf[len++] = key;
				FUNC1(key);
			}
		}
	} while (key != '\r');
	FUNC1('\n');

	if (len == 0)
		return VIDEO_CURRENT_MODE; /* Default */

	v = 0;
	for (i = 0; i < len; i++) {
		v <<= 4;
		key = entry_buf[i] | 0x20;
		v += (key > '9') ? key-'a'+10 : key-'0';
	}

	return v;
}