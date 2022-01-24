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
typedef  int /*<<< orphan*/  uv_stream_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  on_connection ; 
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char*,int,struct sockaddr_in*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(int port) {
  struct sockaddr_in addr;
  int r;

  FUNC0(0 == FUNC2("0.0.0.0", port, &addr));

  r = FUNC5(loop, &server);
  if (r) {
    /* TODO: Error codes */
    FUNC1(stderr, "Socket creation error\n");
    return 1;
  }

  r = FUNC4(&server, (const struct sockaddr*) &addr, 0);
  if (r) {
    /* TODO: Error codes */
    FUNC1(stderr, "Bind error\n");
    return 1;
  }

  r = FUNC3((uv_stream_t*)&server, 128, on_connection);
  if (r) {
    /* TODO: Error codes */
    FUNC1(stderr, "Listen error\n");
    return 1;
  }

  return 0;
}