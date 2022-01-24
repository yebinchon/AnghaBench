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
typedef  scalar_t__ uint64_t ;
struct utsname {int /*<<< orphan*/  machine; int /*<<< orphan*/  sysname; } ;
struct TYPE_2__ {int /*<<< orphan*/  hash; int /*<<< orphan*/  aead; int /*<<< orphan*/  algo_name; int /*<<< orphan*/  provider; } ;
typedef  int /*<<< orphan*/  OS ;
typedef  int /*<<< orphan*/  HW ;

/* Variables and functions */
 TYPE_1__* aead_list ; 
 int FUNC0 (scalar_t__*) ; 
 int FUNC1 (char*,char*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__*) ; 
 size_t nb_aead_list ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct utsname*) ; 

int FUNC7(int argc, char **argv)
{
    int ret = 0;
    uint64_t x = 0xdeadbeef;
    uint64_t s = 0;
    int basic_ref = FUNC0(&x);
    char OS[128];
    char HW[128];
#ifndef _WINDOWS
    struct utsname uts;
#endif

#ifdef _WINDOWS
    (void) strcpy_s(OS, sizeof(OS), "windows");
    (void)strcpy_s(HW, sizeof(HW), "x86_64");
#else
    OS[0] = 0;
    HW[0] = 0;
    if (FUNC6(&uts) == 0) {
        if (FUNC5(uts.sysname) + 1 < sizeof(OS)){
            FUNC3(OS, uts.sysname);
        }
        if (FUNC5(uts.machine) + 1 < sizeof(HW)){
            FUNC3(HW, uts.machine);
        }
    }
#endif

    
    FUNC2("OS, HW, bits, mode, 10M ops, provider, version, algorithm, N, L, encrypt us, decrypt us, encrypt mbps, decrypt mbps,\n");
    

    for (size_t i = 0; ret == 0 && i < nb_aead_list; i++) {
        ret = FUNC1(OS, HW, basic_ref, x, aead_list[i].provider, aead_list[i].algo_name, aead_list[i].aead, aead_list[i].hash, 1000,
                             1500, &s);
    }

    /* Gratuitous test, designed to ensure that the initial computation
     * of the basic reference benchmark is not optimised away. */
    if (s == 0){
       FUNC2("Unexpected value of test sum s = %llx\n", (unsigned long long)s);
    } 

    return ret;
}