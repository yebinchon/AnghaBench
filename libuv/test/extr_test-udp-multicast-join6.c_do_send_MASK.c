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
typedef  int /*<<< orphan*/  uv_udp_send_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MULTICAST_ADDR ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  client ; 
 int /*<<< orphan*/  sv_send_cb ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr_in6*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct sockaddr const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(uv_udp_send_t* send_req) {
  uv_buf_t buf;
  struct sockaddr_in6 addr;
  
  buf = FUNC1("PING", 4);

  FUNC0(0 == FUNC2(MULTICAST_ADDR, TEST_PORT, &addr));

  /* client sends "PING" */
  return FUNC3(send_req,
                     &client,
                     &buf,
                     1,
                     (const struct sockaddr*) &addr,
                     sv_send_cb);
}