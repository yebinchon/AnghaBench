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
struct pollfd {int fd; scalar_t__ revents; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ EIO ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  POLLIN ; 
 int FUNC0 (int) ; 
 scalar_t__ errno ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pollfd*,int,int) ; 

__attribute__((used)) static int
FUNC3(void)
{
    struct pollfd pfd;
    int           fd;
    int           pret;

    fd = FUNC1("/dev/random", O_RDONLY);
    if (fd == -1) {
        return 0;
    }
    pfd.fd = fd;
    pfd.events = POLLIN;
    pfd.revents = 0;
    do {
        pret = FUNC2(&pfd, 1, -1);
    } while (pret < 0 && (errno == EINTR || errno == EAGAIN));
    if (pret != 1) {
        (void) FUNC0(fd);
        errno = EIO;
        return -1;
    }
    return FUNC0(fd);
}