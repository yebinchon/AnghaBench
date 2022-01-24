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
typedef  int u8 ;
typedef  int u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static u64 FUNC2 (const u8 *block)
{
	u64 tmp = 0;
	u8 length;

	FUNC0 (!block);

	length = *block++;

	if (length && length <= 8)
		while (length--)
			tmp = (tmp << 8) | *block++;
	else
		FUNC1 ("Illegal length %d.", length);

	return tmp;
}