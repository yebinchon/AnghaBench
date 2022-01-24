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
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int FIFO_LAST ; 
 int _EFAULT ; 
 int _EINVAL ; 
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  log_buf ; 
 size_t log_max_since_clear ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5(addr_t buf_addr, int_t len, int flags) {
    if (len < 0)
        return _EINVAL;
    if (flags & FIFO_LAST) {
        if ((size_t) len > log_max_since_clear)
            len = log_max_since_clear;
    } else {
        if ((size_t) len > FUNC0(&log_buf))
            len = FUNC0(&log_buf);
    }
    char *buf = FUNC3(len);
    FUNC1(&log_buf, buf, len, flags);
    int fail = FUNC4(buf_addr, buf, len);
    FUNC2(buf);
    if (fail)
        return _EFAULT;
    return len;
}