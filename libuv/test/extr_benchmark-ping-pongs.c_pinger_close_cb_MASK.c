#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ data; } ;
typedef  TYPE_1__ uv_handle_t ;
struct TYPE_6__ {int pongs; } ;
typedef  TYPE_2__ pinger_t ;

/* Variables and functions */
 int TIME ; 
 int /*<<< orphan*/  completed_pingers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(uv_handle_t* handle) {
  pinger_t* pinger;

  pinger = (pinger_t*)handle->data;
  FUNC1(stderr, "ping_pongs: %d roundtrips/s\n", (1000 * pinger->pongs) / TIME);
  FUNC0(stderr);

  FUNC2(pinger);

  completed_pingers++;
}