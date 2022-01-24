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
struct tty {size_t bufsize; int /*<<< orphan*/  consumed; scalar_t__ buf_flag; scalar_t__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tty *tty, void *buf, size_t bufsize) {
    FUNC0(bufsize <= tty->bufsize);
    FUNC1(buf, tty->buf, bufsize);
    tty->bufsize -= bufsize;
    FUNC2(tty->buf, tty->buf + bufsize, tty->bufsize); // magic!
    FUNC2(tty->buf_flag, tty->buf_flag + bufsize, tty->bufsize);
    FUNC3(&tty->consumed);
}