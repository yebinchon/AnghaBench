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
typedef  int /*<<< orphan*/  ranges1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 
 char* FUNC4 (char const*,char const*,char const*,int,int*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static const char *FUNC7(const char *buf, const char *buf_end, const char **token, size_t *token_len, int *ret)
{
    const char *token_start = buf;

#ifdef __SSE4_2__
    static const char ranges1[] = "\0\010"
                                  /* allow HT */
                                  "\012\037"
                                  /* allow SP and up to but not including DEL */
                                  "\177\177"
        /* allow chars w. MSB set */
        ;
    int found;
    buf = findchar_fast(buf, buf_end, ranges1, sizeof(ranges1) - 1, &found);
    if (found)
        goto FOUND_CTL;
#else
    /* find non-printable char within the next 8 bytes, this is the hottest code; manually inlined */
    while (FUNC5(buf_end - buf >= 8)) {
#define DOIT()                                                                                                                     \
    do {                                                                                                                           \
        if (unlikely(!IS_PRINTABLE_ASCII(*buf)))                                                                                   \
            goto NonPrintable;                                                                                                     \
        ++buf;                                                                                                                     \
    } while (0)
        DOIT();
        DOIT();
        DOIT();
        DOIT();
        DOIT();
        DOIT();
        DOIT();
        DOIT();
#undef DOIT
        continue;
    NonPrintable:
        if ((FUNC5((unsigned char)*buf < '\040') && FUNC5(*buf != '\011')) || FUNC6(*buf == '\177')) {
            goto FOUND_CTL;
        }
        ++buf;
    }
#endif
    for (;; ++buf) {
        FUNC0();
        if (FUNC6(!FUNC3(*buf))) {
            if ((FUNC5((unsigned char)*buf < '\040') && FUNC5(*buf != '\011')) || FUNC6(*buf == '\177')) {
                goto FOUND_CTL;
            }
        }
    }
FOUND_CTL:
    if (FUNC5(*buf == '\015')) {
        ++buf;
        FUNC2('\012');
        *token_len = buf - 2 - token_start;
    } else if (*buf == '\012') {
        *token_len = buf - token_start;
        ++buf;
    } else {
        *ret = -1;
        return NULL;
    }
    *token = token_start;

    return buf;
}