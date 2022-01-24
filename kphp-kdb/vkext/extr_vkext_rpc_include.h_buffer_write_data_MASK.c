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
struct rpc_buffer {int wptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_buffer*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,void const*,int) ; 

__attribute__((used)) static inline void FUNC2 (struct rpc_buffer *buf, const void *x, int len) {
  FUNC0 (buf, len);
  FUNC1 (buf->wptr, x, len);
  buf->wptr += len;
}