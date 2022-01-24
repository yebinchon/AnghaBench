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
struct rpc_buffer {scalar_t__ sptr; scalar_t__ rptr; scalar_t__ wptr; scalar_t__ eptr; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_BUFFER_MAGIC ; 
 scalar_t__ FUNC0 (int) ; 
 struct rpc_buffer* FUNC1 (int) ; 

__attribute__((used)) static struct rpc_buffer *FUNC2 (int start_len) {
  struct rpc_buffer *buf = FUNC1 (sizeof (struct rpc_buffer));
  buf->magic = RPC_BUFFER_MAGIC;
  buf->sptr = FUNC0 (start_len);
  buf->eptr = buf->sptr + start_len;
  buf->wptr = buf->rptr = buf->sptr;
  return buf;
}