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
 int /*<<< orphan*/  FIFO_OVERWRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_buf ; 
 scalar_t__ log_max_since_clear ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(const char *msg) {
    FUNC1(&log_buf, msg, FUNC2(msg), FIFO_OVERWRITE);
    log_max_since_clear += FUNC2(msg);
    if (log_max_since_clear > FUNC0(&log_buf))
        log_max_since_clear = FUNC0(&log_buf);
}