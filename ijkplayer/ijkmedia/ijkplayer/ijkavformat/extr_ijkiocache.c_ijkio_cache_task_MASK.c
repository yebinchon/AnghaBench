#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_4__ {int task_is_running; int io_eof_reached; int seek_completed; scalar_t__ read_logical_pos; scalar_t__ seek_pos; scalar_t__ file_logical_pos; scalar_t__ seek_ret; scalar_t__ cache_file_forwards_capacity; int /*<<< orphan*/  file_mutex; int /*<<< orphan*/  cond_wakeup_exit; int /*<<< orphan*/  cond_wakeup_main; int /*<<< orphan*/  cond_wakeup_file_background; scalar_t__ seek_request; scalar_t__ io_error; scalar_t__ cache_file_close; } ;
struct TYPE_3__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ IjkURLContext ;
typedef  TYPE_2__ IjkIOCacheContext ;

/* Variables and functions */
 scalar_t__ FILE_RW_ERROR ; 
 scalar_t__ IJKAVERROR_EXIT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void *h, void *r) {
    IjkIOCacheContext *c= ((IjkURLContext *)h)->priv_data;
    c->task_is_running = 1;
    int64_t ret = 0;

    while(1) {
        if (c->cache_file_close) {
            break;
        }
        if (FUNC1(h)) {
            c->io_eof_reached   = 1;
            c->io_error         = IJKAVERROR_EXIT;
            break;
        }

        if (c->seek_request) {
            FUNC5(&c->file_mutex);
            c->io_eof_reached    = 0;
            c->io_error          = 0;
            c->seek_completed    = 1;
            c->seek_request      = 0;
            c->read_logical_pos  = c->seek_pos;
            c->file_logical_pos  = c->seek_pos;
            c->seek_ret          = c->seek_pos;
            FUNC3(&c->cond_wakeup_main);
            FUNC6(&c->file_mutex);
        }

        if (((c->file_logical_pos - c->read_logical_pos > c->cache_file_forwards_capacity)
            || c->io_eof_reached)) {
            FUNC5(&c->file_mutex);
            FUNC3(&c->cond_wakeup_main);
            FUNC4(&c->cond_wakeup_file_background, &c->file_mutex);
            FUNC6(&c->file_mutex);
        } else {
            ret = FUNC2(h);
            if (ret > 0) {
                FUNC5(&c->file_mutex);
                FUNC3(&c->cond_wakeup_main);
                FUNC6(&c->file_mutex);
            } else if (ret == FILE_RW_ERROR) {
                break;
            }
        }

        FUNC0(h);
    }
    FUNC5(&c->file_mutex);
    c->task_is_running = 0;
    FUNC3(&c->cond_wakeup_main);
    FUNC3(&c->cond_wakeup_exit);
    FUNC6(&c->file_mutex);
}