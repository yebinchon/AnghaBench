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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(u16 length, u8 * data)
{
	u16 i;

	for (i = 0; i < length; i++) {
		FUNC0("%25s%2.2X : %2.2X\n", "Byte", i, data[i]);
	}
}