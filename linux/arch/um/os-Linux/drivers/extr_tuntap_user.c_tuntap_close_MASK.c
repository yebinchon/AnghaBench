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
struct tuntap_data {int fd; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  dev; int /*<<< orphan*/  fixed_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  close_addr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int fd, void *data)
{
	struct tuntap_data *pri = data;

	if (!pri->fixed_config)
		FUNC1(pri->dev, close_addr, pri->dev_name);
	FUNC0(fd);
	pri->fd = -1;
}