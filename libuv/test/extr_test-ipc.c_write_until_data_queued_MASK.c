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
typedef  int /*<<< orphan*/  uv_stream_t ;
struct TYPE_2__ {scalar_t__ write_queue_size; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__ channel ; 
 int /*<<< orphan*/  closed_handle_large_write_cb ; 
 int /*<<< orphan*/  large_buf ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * write_reqs ; 

__attribute__((used)) static unsigned int FUNC3() {
  unsigned int i;
  int r;

  i = 0;
  do {
    r = FUNC2(&write_reqs[i],
                 (uv_stream_t*)&channel,
                 &large_buf,
                 1,
                 closed_handle_large_write_cb);
    FUNC1(r == 0);
    i++;
  } while (channel.write_queue_size == 0 &&
           i < FUNC0(write_reqs));

  return channel.write_queue_size;
}