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
typedef  int int_t ;
typedef  int addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int O_CLOEXEC_ ; 
 int O_NONBLOCK_ ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int _EFAULT ; 
 int _EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int*) ; 
 int FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int,int*) ; 

int_t FUNC7(addr_t pipe_addr, int_t flags) {
    FUNC1("pipe2(%#x, %#x)", pipe_addr, flags);
    if (flags & ~(O_CLOEXEC_|O_NONBLOCK_)) {
        FUNC0("unsupported pipe2 flags");
        return _EINVAL;
    }

    int p[2];
    int err = FUNC4(p);
    if (err < 0)
        return err;

    int fp[2];
    err = fp[0] = FUNC5(p[0], flags);
    if (fp[0] < 0)
        goto close_pipe;
    err = fp[1] = FUNC5(p[1], flags);
    if (fp[1] < 0)
        goto close_fake_0;

    err = _EFAULT;
    if (FUNC6(pipe_addr, fp))
        goto close_fake_1;
    FUNC1(" [%d %d]", fp[0], fp[1]);
    return 0;

close_fake_1:
    FUNC3(fp[1]);
close_fake_0:
    FUNC3(fp[0]);
close_pipe:
    FUNC2(p[0]);
    FUNC2(p[1]);
    return err;
}