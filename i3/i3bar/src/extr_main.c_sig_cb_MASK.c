#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ev_loop {int dummy; } ;
struct TYPE_3__ {int signum; } ;
typedef  TYPE_1__ ev_signal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EVUNLOOP_ALL ; 
#define  SIGHUP 130 
#define  SIGINT 129 
#define  SIGTERM 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_loop ; 

__attribute__((used)) static void FUNC2(struct ev_loop *loop, ev_signal *watcher, int revents) {
    switch (watcher->signum) {
        case SIGTERM:
            FUNC0("Got a SIGTERM, stopping\n");
            break;
        case SIGINT:
            FUNC0("Got a SIGINT, stopping\n");
            break;
        case SIGHUP:
            FUNC0("Got a SIGHUP, stopping\n");
    }
    FUNC1(main_loop, EVUNLOOP_ALL);
}