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
 int count ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,size_t*,int*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (unsigned char*,size_t,int,int) ; 

void FUNC5(void) {
    int i,j;
    for (i = 0; i < 200 * count; i++) {
        unsigned char buffer[2048];
        size_t buflen = 0;
        int certainly_der = 0;
        int certainly_not_der = 0;
        FUNC3(buffer, &buflen, &certainly_der, &certainly_not_der);
        FUNC0(buflen <= 2048);
        for (j = 0; j < 16; j++) {
            int ret = 0;
            if (j > 0) {
                FUNC1(buffer, &buflen);
                /* We don't know anything anymore about the DERness of the result */
                certainly_der = 0;
                certainly_not_der = 0;
            }
            ret = FUNC4(buffer, buflen, certainly_der, certainly_not_der);
            if (ret != 0) {
                size_t k;
                FUNC2(stderr, "Failure %x on ", ret);
                for (k = 0; k < buflen; k++) {
                    FUNC2(stderr, "%02x ", buffer[k]);
                }
                FUNC2(stderr, "\n");
            }
            FUNC0(ret == 0);
        }
    }
}