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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ EIO ; 
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ errno ; 
 int FUNC3 (int,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC4 (int,struct stat*) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static int
FUNC7(void)
{
    struct stat       st;
    static const char *devices[] = {
#  ifndef USE_BLOCKING_RANDOM
        "/dev/urandom",
#  endif
        "/dev/random", NULL
    };
    const char      **device = devices;
    int               fd;

#  ifdef BLOCK_ON_DEV_RANDOM
    if (randombytes_block_on_dev_random() != 0) {
        return -1;
    }
#  endif
    do {
        fd = FUNC5(*device, O_RDONLY);
        if (fd != -1) {
            if (FUNC4(fd, &st) == 0 && (FUNC1(st.st_mode) || FUNC0(st.st_mode))) {
#  if defined(F_SETFD) && defined(FD_CLOEXEC)
                (void) fcntl(fd, F_SETFD, fcntl(fd, F_GETFD) | FD_CLOEXEC);
#  endif
                return fd;
            }
            (void) FUNC2(fd);
        } else if (errno == EINTR) {
            continue;
        }
        device++;
    } while (*device != NULL);

    errno = EIO;
    return -1;
}