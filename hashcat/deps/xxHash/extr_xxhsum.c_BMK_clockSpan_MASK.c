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
typedef  scalar_t__ clock_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static clock_t FUNC1( clock_t start )
{
    return FUNC0() - start;   /* works even if overflow; Typical max span ~ 30 mn */
}