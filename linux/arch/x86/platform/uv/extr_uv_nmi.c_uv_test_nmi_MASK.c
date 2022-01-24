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
struct uv_hub_nmi_s {scalar_t__ pch_owner; scalar_t__ hub_present; } ;

/* Variables and functions */
 int FUNC0 (struct uv_hub_nmi_s*) ; 
 int FUNC1 (struct uv_hub_nmi_s*) ; 

__attribute__((used)) static int FUNC2(struct uv_hub_nmi_s *hub_nmi)
{
	if (hub_nmi->hub_present)
		return FUNC1(hub_nmi);

	if (hub_nmi->pch_owner)		/* Only PCH owner can check status */
		return FUNC0(hub_nmi);

	return -1;
}