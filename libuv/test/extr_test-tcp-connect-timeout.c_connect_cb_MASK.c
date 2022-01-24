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
typedef  int /*<<< orphan*/  uv_connect_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int UV_ECANCELED ; 
 int /*<<< orphan*/  connect_cb_called ; 
 int /*<<< orphan*/  connect_req ; 

__attribute__((used)) static void FUNC1(uv_connect_t* req, int status) {
  FUNC0(req == &connect_req);
  FUNC0(status == UV_ECANCELED);
  connect_cb_called++;
}