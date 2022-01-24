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
 void* __start_initcall ; 
 void* __stop_initcall ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

int FUNC12(int argc, char **argv)
{
    void **ptr;
    void (*func)(void);

    ptr = &__start_initcall;
    while (ptr != &__stop_initcall) {
        func = *ptr++;
        func();
    }
    FUNC0();
    FUNC6();
    FUNC4();
    //test_loop();
    //test_floats();
#if !defined(__x86_64__)
    //test_bcd();
#endif
    FUNC11();
    FUNC9();
    //test_misc();
    FUNC5();
#ifdef TEST_SEGS
    test_segs();
    test_code16();
#endif
#ifdef TEST_VM86
    test_vm86();
#endif
#if !defined(__x86_64__)
    //test_exceptions();
    //test_self_modifying_code();
    //test_single_step();
#endif
    //test_enter();
    FUNC2();
#ifdef TEST_SSE
    test_sse();
    test_fxsave();
#endif
    return 0;
}