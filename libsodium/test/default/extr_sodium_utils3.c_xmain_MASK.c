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
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 

int
FUNC11(void)
{
    void * buf;
    size_t size;

#ifdef SIG_DFL
# ifdef SIGSEGV
    signal(SIGSEGV, segv_handler);
# endif
# ifdef SIGBUS
    signal(SIGBUS, segv_handler);
# endif
# ifdef SIGABRT
    signal(SIGABRT, segv_handler);
# endif
#endif
    size = 1U + FUNC2(100000U);
    buf  = FUNC6(size);
    FUNC0(buf != NULL);

/* old versions of asan emit a warning because they don't support mlock*() */
#ifndef __SANITIZE_ADDRESS__
    FUNC8(buf);
    FUNC10(buf);
#endif

#if defined(HAVE_CATCHABLE_SEGV) && !defined(__EMSCRIPTEN__) && !defined(__SANITIZE_ADDRESS__)
    sodium_memzero(((unsigned char *) buf) - 8, 8U);
    sodium_mprotect_readonly(buf);
    sodium_free(buf);
    printf("Underflow not caught\n");
#else
    FUNC3(0);
#endif
    return 0;
}