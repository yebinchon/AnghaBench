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
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,size_t) ; 
 int FUNC1 (int) ; 
 size_t FUNC2 (size_t) ; 

__attribute__((used)) static void FUNC3(unsigned char *sig, size_t *len) {
    int pos;
    int action = FUNC1(3);
    if (action < 1 && *len > 3) {
        /* Delete a byte. */
        pos = FUNC2(*len);
        FUNC0(sig + pos, sig + pos + 1, *len - pos - 1);
        (*len)--;
        return;
    } else if (action < 2 && *len < 2048) {
        /* Insert a byte. */
        pos = FUNC2(1 + *len);
        FUNC0(sig + pos + 1, sig + pos, *len - pos);
        sig[pos] = FUNC1(8);
        (*len)++;
        return;
    } else if (action < 4) {
        /* Modify a byte. */
        sig[FUNC2(*len)] += 1 + FUNC2(255);
        return;
    } else { /* action < 8 */
        /* Modify a bit. */
        sig[FUNC2(*len)] ^= 1 << FUNC1(3);
        return;
    }
}