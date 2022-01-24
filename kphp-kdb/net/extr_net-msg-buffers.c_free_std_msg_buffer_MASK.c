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
struct msg_buffers_chunk {scalar_t__ magic; int two_power; scalar_t__* free_cnt; int tot_buffers; TYPE_1__* ch_head; scalar_t__ buffer_size; } ;
struct msg_buffer {int refcnt; scalar_t__ magic; struct msg_buffers_chunk* chunk; } ;
struct TYPE_2__ {int free_buffers; } ;

/* Variables and functions */
 scalar_t__ MSG_BUFFER_FREE_MAGIC ; 
 scalar_t__ MSG_BUFFER_USED_MAGIC ; 
 scalar_t__ MSG_CHUNK_USED_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct msg_buffers_chunk*) ; 
 int FUNC3 (struct msg_buffers_chunk*,struct msg_buffer*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  total_used_buffers ; 
 int /*<<< orphan*/  total_used_buffers_size ; 
 int verbosity ; 

int FUNC4 (struct msg_buffers_chunk *C, struct msg_buffer *X) {
  FUNC0 (!X->refcnt && X->magic == MSG_BUFFER_USED_MAGIC && C->magic == MSG_CHUNK_USED_MAGIC && X->chunk == C);
  int x = FUNC3 (C, X);
  int two_power = C->two_power;
  if (verbosity > 2) {
    FUNC1 (stderr, "free_msg_buffer(%d)\n", x);
  }
  x += two_power;
  FUNC0 (!C->free_cnt[x]);
  do {
    FUNC0 (++C->free_cnt[x] > 0);
  } while (x >>= 1);

  X->magic = MSG_BUFFER_FREE_MAGIC;
  X->refcnt = -0x40000000;
  ++ C->ch_head->free_buffers;
  
  total_used_buffers_size -= C->buffer_size;
  total_used_buffers --;

  if (!C->free_cnt[1] && C->ch_head->free_buffers * 4 >= C->tot_buffers * 5) {
    FUNC2 (C);
  }

  return 1;
}