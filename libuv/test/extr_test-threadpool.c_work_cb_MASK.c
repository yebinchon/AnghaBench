#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ uv_work_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  data ; 
 int /*<<< orphan*/  work_cb_count ; 
 TYPE_1__ work_req ; 

__attribute__((used)) static void FUNC1(uv_work_t* req) {
  FUNC0(req == &work_req);
  FUNC0(req->data == &data);
  work_cb_count++;
}