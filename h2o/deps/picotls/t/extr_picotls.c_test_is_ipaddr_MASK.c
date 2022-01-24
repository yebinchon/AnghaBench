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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void)
{
    FUNC0(!FUNC1("www.google.com"));
    FUNC0(!FUNC1("www.google.com."));
    FUNC0(!FUNC1("www"));
    FUNC0(!FUNC1(""));
    FUNC0(!FUNC1("123"));
    FUNC0(FUNC1("1.1.1.1"));
    FUNC0(FUNC1("2001:db8::2:1"));
}