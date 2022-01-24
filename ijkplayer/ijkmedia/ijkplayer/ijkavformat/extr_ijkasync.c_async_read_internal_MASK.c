#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_7__ {int logical_pos; int io_error; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond_wakeup_background; int /*<<< orphan*/  cond_wakeup_main; scalar_t__ io_eof_reached; int /*<<< orphan*/  ring; } ;
typedef  int /*<<< orphan*/  RingBuffer ;
typedef  TYPE_2__ Context ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int AVERROR_EXIT ; 
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*,int,void (*) (void*,void*,int)) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(URLContext *h, void *dest, int size, int read_complete,
                               void (*func)(void*, void*, int))
{
    Context      *c       = h->priv_data;
    RingBuffer   *ring    = &c->ring;
    int           to_read = size;
    int           ret     = 0;

    FUNC5(&c->mutex);

    while (to_read > 0) {
        int fifo_size, to_copy;
        if (FUNC1(h)) {
            ret = AVERROR_EXIT;
            break;
        }
        fifo_size = FUNC8(ring);
        to_copy   = FUNC0(to_read, fifo_size);
        if (to_copy > 0) {
            FUNC7(ring, dest, to_copy, func);
            if (!func)
                dest = (uint8_t *)dest + to_copy;
            c->logical_pos += to_copy;
            to_read        -= to_copy;
            ret             = size - to_read;

            if (to_read <= 0 || !read_complete)
                break;
        } else if (c->io_eof_reached) {
            if (ret <= 0) {
                if (c->io_error)
                    ret = c->io_error;
                else
                    ret = AVERROR_EOF;
            }
            break;
        }
        FUNC3(&c->cond_wakeup_background);
        FUNC4(&c->cond_wakeup_main, &c->mutex);
    }

    FUNC3(&c->cond_wakeup_background);
    FUNC6(&c->mutex);

    FUNC2(h);
    return ret;
}