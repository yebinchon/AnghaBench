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
typedef  int /*<<< orphan*/  pgprotval_t ;

/* Variables and functions */
 int /*<<< orphan*/  _PAGE_NX ; 
 scalar_t__ _etext ; 
 scalar_t__ _text ; 
 scalar_t__ FUNC0 (unsigned long,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static pgprotval_t FUNC1(unsigned long start, unsigned long end)
{
	unsigned long t_end = (unsigned long)_etext - 1;
	unsigned long t_start = (unsigned long)_text;

	if (FUNC0(start, end, t_start, t_end))
		return _PAGE_NX;
	return 0;
}