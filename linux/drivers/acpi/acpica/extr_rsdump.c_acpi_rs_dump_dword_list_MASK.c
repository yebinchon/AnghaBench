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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(u8 length, u32 * data)
{
	u8 i;

	for (i = 0; i < length; i++) {
		FUNC0("%25s%2.2X : %8.8X\n", "Dword", i, data[i]);
	}
}