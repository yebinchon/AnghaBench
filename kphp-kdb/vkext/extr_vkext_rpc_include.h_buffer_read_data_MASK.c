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
struct rpc_buffer {char* rptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_buffer*,int) ; 

__attribute__((used)) static inline int FUNC1 (struct rpc_buffer *buf, int len, char **x) {
  if (!FUNC0 (buf, len)) {
    return -1;
  } else {
    *x = buf->rptr;
    buf->rptr += len;
    //buf->rptr += len + ((-len) & 3);
    return 1;
  }
}