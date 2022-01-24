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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PIPPENGER_MAX_BUCKET_WINDOW ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(void) {
    int i;

    FUNC0(FUNC2(0) == 0);
    for(i = 1; i <= PIPPENGER_MAX_BUCKET_WINDOW; i++) {
#ifdef USE_ENDOMORPHISM
        /* Bucket_window of 8 is not used with endo */
        if (i == 8) {
            continue;
        }
#endif
        FUNC0(FUNC1(FUNC2(i)) == i);
        if (i != PIPPENGER_MAX_BUCKET_WINDOW) {
            FUNC0(FUNC1(FUNC2(i)+1) > i);
        }
    }
}