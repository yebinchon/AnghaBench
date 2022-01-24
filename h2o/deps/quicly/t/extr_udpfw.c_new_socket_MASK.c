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
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(int sin_family)
{
    int s = FUNC2(sin_family, SOCK_DGRAM, IPPROTO_UDP);
    FUNC0(s != -1);
    int flags = FUNC1(s, F_GETFL, 0);
    FUNC0(flags != -1);
    FUNC1(s, F_SETFL, flags | O_NONBLOCK);
    return s;
}