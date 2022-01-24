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
typedef  int /*<<< orphan*/  line ;
typedef  scalar_t__ dword_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AX_SYSINFO ; 
 int /*<<< orphan*/  AX_SYSINFO_EHDR ; 
 int /*<<< orphan*/  PTRACE_POKEDATA ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,scalar_t__*,scalar_t__*,char**) ; 
 scalar_t__ FUNC10 (char*,char*) ; 

void FUNC11(int pid, const void *new_vdso, size_t new_vdso_size) {
    // get the vdso address and size from /proc/pid/maps
    char maps_file[32];
    FUNC8(maps_file, "/proc/%d/maps", pid);
    FILE *maps = FUNC4(maps_file, "r");

    char line[256];
    dword_t start, end;
    while (FUNC3(line, sizeof(line), maps) != NULL) {
        char *map_type = NULL;
        FUNC9(line, "%8x-%8x %*s %*s %*s %*s %ms\n", &start, &end, &map_type);
        if (map_type) {
            if (FUNC10(map_type, "[vdso]") == 0) {
                FUNC5(map_type);
                break;
            }
            FUNC5(map_type);
        }
    }
    FUNC2(maps);

    // copy the new vdso in
    for (dword_t addr = start; addr < end; addr += sizeof(unsigned long)) {
        unsigned long new_vdso_data = 0;
        if (addr - start < new_vdso_size) {
            new_vdso_data = *(unsigned long *) ((char *) new_vdso + addr - start);
        }
        if (FUNC7(PTRACE_POKEDATA, pid, addr, new_vdso_data) < 0) {
            FUNC6("ptrace vdso poke"); FUNC1(1);
        }
    }

    // find the entry point
    dword_t entry = *(dword_t *) ((char *) new_vdso + 24) + start;

    FUNC0(pid, AX_SYSINFO, entry);
    FUNC0(pid, AX_SYSINFO_EHDR, start);
}