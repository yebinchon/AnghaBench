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
struct fd {int dummy; } ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int dword_t ;

/* Variables and functions */
#define  FIONBIO_ 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int _EBADF ; 
 struct fd* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fd*,int,int) ; 
 int FUNC3 (struct fd*,int) ; 

dword_t FUNC4(fd_t f, dword_t cmd, dword_t arg) {
    FUNC0("ioctl(%d, 0x%x, 0x%x)", f, cmd, arg);
    struct fd *fd = FUNC1(f);
    if (fd == NULL)
        return _EBADF;

    switch (cmd) {
        case FIONBIO_:
            return FUNC3(fd, arg);
        default:
            return FUNC2(fd, cmd, arg);
    }
    return 0;
}