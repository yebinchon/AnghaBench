#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_stream_t ;
struct TYPE_2__ {int /*<<< orphan*/  channel; int /*<<< orphan*/  listen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ ctx2 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(uv_stream_t* handle, int status) {
  int r;
  FUNC0(handle == (uv_stream_t*)&ctx2.listen);
  FUNC0(status == 0);

  r = FUNC2((uv_stream_t*)&ctx2.listen, (uv_stream_t*)&ctx2.channel);
  FUNC0(r == 0);

  FUNC1();
}