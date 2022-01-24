#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  close_cb ; 
 int /*<<< orphan*/  connection_cb_called ; 
 int /*<<< orphan*/  incoming ; 
 int /*<<< orphan*/  incoming_close_cb ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(uv_stream_t* tcp, int status) {
  FUNC0(status == 0);

  FUNC0(0 == FUNC3(tcp->loop, &incoming));
  FUNC0(0 == FUNC1(tcp, (uv_stream_t*) &incoming));

  connection_cb_called++;
  FUNC2((uv_handle_t*) &incoming, incoming_close_cb);
  FUNC2((uv_handle_t*) tcp, close_cb);
}