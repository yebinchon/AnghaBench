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
 char FUNC0 (unsigned int,int) ; 
 unsigned int FUNC1 (unsigned int,int) ; 
 unsigned int FUNC2 (unsigned int,int) ; 

__attribute__((used)) static int
FUNC3(unsigned int x)
{
    return (FUNC2(x, 26) & (x + 'A')) |
           (FUNC1(x, 26) & FUNC2(x, 52) & (x + ('a' - 26))) |
           (FUNC1(x, 52) & FUNC2(x, 62) & (x + ('0' - 52))) | (FUNC0(x, 62) & '+') |
           (FUNC0(x, 63) & '/');
}