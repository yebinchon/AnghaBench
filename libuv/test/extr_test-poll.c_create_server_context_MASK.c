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
typedef  int /*<<< orphan*/  uv_os_sock_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {TYPE_2__ poll_handle; scalar_t__ connections; int /*<<< orphan*/  sock; } ;
typedef  TYPE_1__ server_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static server_context_t* FUNC4(
    uv_os_sock_t sock) {
  int r;
  server_context_t* context;

  context = (server_context_t*) FUNC1(sizeof *context);
  FUNC0(context != NULL);

  context->sock = sock;
  context->connections = 0;

  r = FUNC3(FUNC2(), &context->poll_handle, sock);
  context->poll_handle.data = context;
  FUNC0(r == 0);

  return context;
}