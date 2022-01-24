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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SYSINFO_EHDR ; 
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4() {
    void *vdso = (void *) FUNC2(AT_SYSINFO_EHDR);
    FILE *f = FUNC0("libvdso.so", "w");
    if (f == NULL) {
        FUNC3("fopen libvdso.so");
        return 1;
    }
    FUNC1(vdso, 0x2000, 1, f);
}