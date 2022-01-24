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
struct gaic_request_status {scalar_t__ magic; int canceled; int /*<<< orphan*/  base; int /*<<< orphan*/  request; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 scalar_t__ GAIC_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(evutil_socket_t fd, short what, void *arg)
{
	struct gaic_request_status *status = arg;

	FUNC2(status->magic == GAIC_MAGIC);
	status->canceled = 1;
	FUNC0(status->request);
	return;
end:
	FUNC1(status->base, NULL);
}