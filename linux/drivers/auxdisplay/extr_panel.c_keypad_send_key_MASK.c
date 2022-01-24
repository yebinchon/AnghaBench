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
 size_t KEYPAD_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  keypad_available ; 
 int /*<<< orphan*/ * keypad_buffer ; 
 size_t keypad_buflen ; 
 int /*<<< orphan*/  keypad_read_wait ; 
 int /*<<< orphan*/  keypad_start ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(const char *string, int max_len)
{
	/* send the key to the device only if a process is attached to it. */
	if (!FUNC0(&keypad_available)) {
		while (max_len-- && keypad_buflen < KEYPAD_BUFFER && *string) {
			keypad_buffer[(keypad_start + keypad_buflen++) %
				      KEYPAD_BUFFER] = *string++;
		}
		FUNC1(&keypad_read_wait);
	}
}