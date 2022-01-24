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
struct ev_loop {int dummy; } ;
typedef  int /*<<< orphan*/  ev_io ;
struct TYPE_2__ {scalar_t__ version; } ;

/* Variables and functions */
 TYPE_1__ child ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (unsigned char*,int) ; 

__attribute__((used)) static void FUNC5(struct ev_loop *loop, ev_io *watcher, int revents) {
    int rec;
    unsigned char *buffer = FUNC2(watcher, &rec);
    if (buffer == NULL)
        return;
    bool has_urgent = false;
    if (child.version > 0) {
        has_urgent = FUNC4(buffer, rec);
    } else {
        FUNC3((char *)buffer, rec);
    }
    FUNC1(buffer);
    FUNC0(has_urgent);
}