#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jv ;
struct TYPE_3__ {int /*<<< orphan*/  err_cb_data; int /*<<< orphan*/  (* err_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ jq_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(jq_state *jq, jv value) {
  FUNC0(jq->err_cb);
  // callback must jv_free() its jv argument
  jq->err_cb(jq->err_cb_data, value);
}