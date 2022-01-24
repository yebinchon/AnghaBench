#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* handle; } ;
typedef  TYPE_2__ uv_connect_t ;
struct TYPE_4__ {int /*<<< orphan*/  loop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NUM_CLIENTS ; 
 scalar_t__ connect_cb_called ; 
 scalar_t__ connection_cb_called ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(uv_connect_t* connect_req, int status) {
  FUNC0(status == 0);
  if (++connect_cb_called == NUM_CLIENTS &&
      connection_cb_called == NUM_CLIENTS) {
    FUNC1(connect_req->handle->loop);
  }
}