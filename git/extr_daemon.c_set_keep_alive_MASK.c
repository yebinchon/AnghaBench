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
typedef  int /*<<< orphan*/  ka ;

/* Variables and functions */
 scalar_t__ ENOTSOCK ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(int sockfd)
{
	int ka = 1;

	if (FUNC1(sockfd, SOL_SOCKET, SO_KEEPALIVE, &ka, sizeof(ka)) < 0) {
		if (errno != ENOTSOCK)
			FUNC0("unable to set SO_KEEPALIVE on socket: %s",
				FUNC2(errno));
	}
}