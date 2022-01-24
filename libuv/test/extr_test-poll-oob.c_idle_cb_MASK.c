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
typedef  int /*<<< orphan*/  uv_idle_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  client_handle ; 
 scalar_t__ kMaxTicks ; 
 int /*<<< orphan*/  peer_handle ; 
 int /*<<< orphan*/ * poll_req ; 
 int /*<<< orphan*/  server_handle ; 
 scalar_t__ ticks ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(uv_idle_t* idle) {
  FUNC2(100);
  if (++ticks < kMaxTicks)
    return;

  FUNC1(&poll_req[0]);
  FUNC1(&poll_req[1]);
  FUNC0((uv_handle_t*) &server_handle, NULL);
  FUNC0((uv_handle_t*) &client_handle, NULL);
  FUNC0((uv_handle_t*) &peer_handle, NULL);
  FUNC0((uv_handle_t*) idle, NULL);
}