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
struct TYPE_2__ {int /*<<< orphan*/  remote_pid; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/ * TL_OUT_PID ; 
 int FUNC1 (struct connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,long long) ; 
 int /*<<< orphan*/  tl_out_conn_methods ; 
 int /*<<< orphan*/  tl_type_conn ; 

__attribute__((used)) static inline int FUNC2 (struct connection *c, long long qid, int keep_error) {
  if (c) {
    TL_OUT_PID = &(FUNC0(c)->remote_pid);
  } else {
    TL_OUT_PID = 0;
  }
  return FUNC1 (c, 0, tl_type_conn, &tl_out_conn_methods, (1 << 27), keep_error, qid);
}