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
struct connection {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct conn_target {int /*<<< orphan*/  port; TYPE_1__ target; } ;

/* Variables and functions */
 int /*<<< orphan*/ * R ; 
 struct conn_target* FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct connection*,char const*,int,int,int,int /*<<< orphan*/ *,int) ; 

int FUNC3 (struct connection *c, const char *key, int key_len) {
  struct conn_target *S = FUNC0 (key+6, key_len-6);
  if (!S) {
    return 0;
  }
  R[0] = FUNC1 (S->target.s_addr);
  R[1] = S->port;
  return FUNC2 (c, key, key_len, 1, 2, R, 2);
}