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
struct drbd_peer_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drbd_peer_device*,int) ; 

int FUNC1(struct drbd_peer_device *peer_device)
{
	return FUNC0(peer_device, 8);
}