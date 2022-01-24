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
 int FUNC0 (unsigned int const,char) ; 
 int FUNC1 (int,char) ; 
 int FUNC2 (int,char) ; 

__attribute__((used)) static unsigned int
FUNC3(int c)
{
    const unsigned int x =
        (FUNC1(c, 'A') & FUNC2(c, 'Z') & (c - 'A')) |
        (FUNC1(c, 'a') & FUNC2(c, 'z') & (c - ('a' - 26))) |
        (FUNC1(c, '0') & FUNC2(c, '9') & (c - ('0' - 52))) | (FUNC0(c, '+') & 62) |
        (FUNC0(c, '/') & 63);

    return x | (FUNC0(x, 0) & (FUNC0(c, 'A') ^ 0xFF));
}