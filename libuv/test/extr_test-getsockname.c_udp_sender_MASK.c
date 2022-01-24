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
typedef  int /*<<< orphan*/  uv_buf_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  send_req ; 
 int /*<<< orphan*/  server_port ; 
 int /*<<< orphan*/  udp ; 
 int /*<<< orphan*/  udp_send ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct sockaddr const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void) {
  struct sockaddr_in server_addr;
  uv_buf_t buf;
  int r;

  r = FUNC3(loop, &udp);
  FUNC0(!r);

  buf = FUNC1("PING", 4);
  FUNC0(0 == FUNC2("127.0.0.1", server_port, &server_addr));

  r = FUNC4(&send_req,
                  &udp,
                  &buf,
                  1,
                  (const struct sockaddr*) &server_addr,
                  udp_send);
  FUNC0(!r);
}