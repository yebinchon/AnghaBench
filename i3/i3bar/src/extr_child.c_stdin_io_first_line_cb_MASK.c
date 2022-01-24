#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct status_block {int dummy; } ;
struct ev_loop {int dummy; } ;
typedef  int /*<<< orphan*/  ev_io ;
struct TYPE_5__ {scalar_t__ hide_on_modifier; } ;
struct TYPE_4__ {scalar_t__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned char*) ; 
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct status_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blocks ; 
 TYPE_1__ child ; 
 TYPE_2__ config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 unsigned char* FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  main_loop ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,unsigned char*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int) ; 
 struct status_block* FUNC11 (int,int) ; 
 int /*<<< orphan*/  statusline_head ; 
 int /*<<< orphan*/  stdin_fd ; 
 int /*<<< orphan*/  stdin_io ; 
 int /*<<< orphan*/  stdin_io_cb ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void FUNC13(struct ev_loop *loop, ev_io *watcher, int revents) {
    int rec;
    unsigned char *buffer = FUNC7(watcher, &rec);
    if (buffer == NULL)
        return;
    FUNC0("Detecting input type based on buffer *%.*s*\n", rec, buffer);
    /* Detect whether this is JSON or plain text. */
    unsigned int consumed = 0;
    /* At the moment, we don’t care for the version. This might change
     * in the future, but for now, we just discard it. */
    FUNC8(&child, buffer, rec, &consumed);
    if (child.version > 0) {
        /* If hide-on-modifier is set, we start of by sending the
         * child a SIGSTOP, because the bars aren't mapped at start */
        if (config.hide_on_modifier) {
            FUNC12();
        }
        FUNC2(FUNC10(buffer + consumed, rec - consumed));
    } else {
        /* In case of plaintext, we just add a single block and change its
         * full_text pointer later. */
        struct status_block *new_block = FUNC11(1, sizeof(struct status_block));
        FUNC1(&statusline_head, new_block, blocks);
        FUNC9((char *)buffer, rec);
    }
    FUNC6(buffer);
    FUNC5(main_loop, stdin_io);
    FUNC3(stdin_io, &stdin_io_cb, stdin_fd, EV_READ);
    FUNC4(main_loop, stdin_io);
}