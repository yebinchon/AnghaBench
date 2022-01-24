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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_2__ {scalar_t__ getrandom_available; int random_data_source_fd; } ;
typedef  int /*<<< orphan*/  PVOID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t const ULLONG_MAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int randombytes_BYTES_MAX ; 
 scalar_t__ FUNC3 (void* const,size_t const) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int,void* const,size_t const) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__ stream ; 

__attribute__((used)) static void
FUNC7(void * const buf, const size_t size)
{
    FUNC4();
# if defined(ULLONG_MAX) && defined(SIZE_MAX)
#  if SIZE_MAX > ULLONG_MAX
    /* coverity[result_independent_of_operands] */
    assert(size <= ULLONG_MAX);
#  endif
# endif
# ifndef _WIN32
#  ifdef HAVE_LINUX_COMPATIBLE_GETRANDOM
    if (stream.getrandom_available != 0) {
        if (randombytes_linux_getrandom(buf, size) != 0) {
            sodium_misuse(); /* LCOV_EXCL_LINE */
        }
        return;
    }
#  endif
    if (stream.random_data_source_fd == -1 ||
        FUNC5(stream.random_data_source_fd, buf, size) != (ssize_t) size) {
        FUNC6(); /* LCOV_EXCL_LINE */
    }
# else /* _WIN32 */
    COMPILER_ASSERT(randombytes_BYTES_MAX <= 0xffffffffUL);
    if (size > (size_t) 0xffffffffUL) {
        sodium_misuse(); /* LCOV_EXCL_LINE */
    }
    if (! RtlGenRandom((PVOID) buf, (ULONG) size)) {
        sodium_misuse(); /* LCOV_EXCL_LINE */
    }
# endif /* _WIN32 */
}