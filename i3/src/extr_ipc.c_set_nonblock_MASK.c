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

/* Variables and functions */
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(int sockfd) {
    int flags = FUNC1(sockfd, F_GETFL, 0);
    if (flags & O_NONBLOCK) {
        return;
    }
    flags |= O_NONBLOCK;
    if (FUNC1(sockfd, F_SETFL, flags) < 0)
        FUNC0(-1, "Could not set O_NONBLOCK");
}