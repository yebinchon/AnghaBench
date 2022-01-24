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
 scalar_t__ EINVAL ; 
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGSEGV ; 
 unsigned int SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (void*,size_t) ; 
 unsigned int FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 void* FUNC9 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 void* FUNC11 (size_t) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 scalar_t__ FUNC16 (void*) ; 
 scalar_t__ FUNC17 (void*) ; 

int
FUNC18(void)
{
    void         *buf;
    void         *buf2;
    size_t        size;
    unsigned int  i;

    size = FUNC6(100U);
    if ((buf = FUNC11(size)) == NULL ||
        (buf2 = FUNC11(size)) == NULL) {
        return 1;
    }
    FUNC5(buf, size);
    FUNC2(buf2, buf, size);
    errno = EINVAL;
    if (FUNC16(buf) != 0) {
        FUNC0(errno == ENOSYS);
    } else {
        FUNC0(size == 0U || FUNC1(buf, buf2, size) != 0);
    }
    errno = EINVAL;
    if (FUNC17(buf) != 0) {
        FUNC0(errno == ENOSYS);
    } else {
        FUNC0(size == 0U || FUNC1(buf, buf2, size) == 0);
    }
    FUNC10(buf2);
    FUNC10(buf);

    if (FUNC11(SIZE_MAX - 1U) != NULL) {
        return 1;
    }
    if (FUNC11(0U) == NULL) {
        return 1;
    }
    if (FUNC9(SIZE_MAX / 2U + 1U, SIZE_MAX / 2U) != NULL) {
        return 1;
    }
    FUNC10(FUNC9(0U, 0U));
    FUNC10(FUNC9(0U, 1U));
    FUNC10(FUNC9(1U, 0U));

    buf = FUNC9(1000U, 50U);
    FUNC3(buf, 0, 50000U);
    FUNC10(buf);

    FUNC10(FUNC11(0U));
    FUNC10(NULL);
    for (i = 0U; i < 10000U; i++) {
        size = 1U + FUNC6(100000U);
        buf  = FUNC11(size);
        FUNC0(buf != NULL);
        FUNC3(buf, i, size);
        FUNC13(buf);
        FUNC10(buf);
    }
    FUNC4("OK\n");
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
    size = 1U + FUNC6(100000U);
    buf  = FUNC11(size);
    FUNC0(buf != NULL);

/* old versions of asan emit a warning because they don't support mlock*() */
#ifndef __SANITIZE_ADDRESS__
    FUNC14(buf);
    FUNC15(buf);
#endif

#if defined(HAVE_CATCHABLE_SEGV) && !defined(__EMSCRIPTEN__) && !defined(__SANITIZE_ADDRESS__)
    sodium_memzero(((unsigned char *) buf) + size, 1U);
    sodium_mprotect_noaccess(buf);
    sodium_free(buf);
    printf("Overflow not caught\n");
#else
    FUNC7(0);
#endif
    return 0;
}