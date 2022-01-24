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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC5(uint8_t *entropy, size_t size)
{
    int fd;

    if ((fd = FUNC2("/dev/urandom", O_RDONLY | O_CLOEXEC)) == -1) {
        if ((fd = FUNC2("/dev/random", O_RDONLY | O_CLOEXEC)) == -1) {
            FUNC3("ptls_minicrypto_random_bytes: could not open neither /dev/random or /dev/urandom");
            FUNC0();
        }
    }

    while (size != 0) {
        ssize_t rret;
        while ((rret = FUNC4(fd, entropy, size)) == -1 && errno == EINTR)
            ;
        if (rret < 0) {
            FUNC3("ptls_minicrypto_random_bytes");
            FUNC0();
        }
        entropy += rret;
        size -= rret;
    }

    FUNC1(fd);
}