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
 scalar_t__ FUNC0 (char,char,char,char) ; 
 scalar_t__* cpu_vendor ; 

__attribute__((used)) static int FUNC1(void)
{
	return cpu_vendor[0] == FUNC0('A', 'u', 't', 'h') &&
	       cpu_vendor[1] == FUNC0('e', 'n', 't', 'i') &&
	       cpu_vendor[2] == FUNC0('c', 'A', 'M', 'D');
}