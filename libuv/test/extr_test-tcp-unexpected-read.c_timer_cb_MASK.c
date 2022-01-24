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
typedef  int /*<<< orphan*/  uv_timer_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  check_handle ; 
 int /*<<< orphan*/  client_handle ; 
 int /*<<< orphan*/  peer_handle ; 
 int /*<<< orphan*/  server_handle ; 
 int /*<<< orphan*/  timer_handle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(uv_timer_t* handle) {
  FUNC0((uv_handle_t*) &check_handle, NULL);
  FUNC0((uv_handle_t*) &timer_handle, NULL);
  FUNC0((uv_handle_t*) &server_handle, NULL);
  FUNC0((uv_handle_t*) &client_handle, NULL);
  FUNC0((uv_handle_t*) &peer_handle, NULL);
}