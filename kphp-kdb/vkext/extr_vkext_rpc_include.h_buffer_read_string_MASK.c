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
struct rpc_buffer {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_buffer*,char*) ; 
 scalar_t__ FUNC1 (struct rpc_buffer*,int,char**) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int*,char*,int) ; 

__attribute__((used)) static inline int FUNC4 (struct rpc_buffer *buf, int *len, char **x) {
  unsigned char c;
  if (FUNC0 (buf, (char *)&c) < 0) {
    return -1;
  }
  *len = c;
  if (*len == 255) {
    return -1;
  }
  if (*len == 254) {
    char *t;
    *len = 0;
    if (FUNC1 (buf, 3, &t) < 0) {
      return -1;
    }
    FUNC3 (len, t, 3);
  }
  if (FUNC1 (buf, *len, x) < 0) {
    return -1;
  }
  FUNC2 (buf);
  return 1;
}