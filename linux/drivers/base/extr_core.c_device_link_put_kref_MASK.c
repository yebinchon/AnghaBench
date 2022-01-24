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
struct device_link {int flags; int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int DL_FLAG_STATELESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  __device_link_del ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct device_link *link)
{
	if (link->flags & DL_FLAG_STATELESS)
		FUNC1(&link->kref, __device_link_del);
	else
		FUNC0(1, "Unable to drop a managed device link reference\n");
}