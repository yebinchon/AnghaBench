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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int READ_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC4(FILE * to, FILE * from)
{
	size_t i, fsize = 0;
	uint8_t buf[READ_BUFF_SIZE];

	while (!FUNC0(from) && !FUNC1(from))
	{
		i = FUNC2(buf, sizeof(uint8_t), READ_BUFF_SIZE, from);
		if (i > 0)
		{
			fsize += i;
			FUNC3(buf, sizeof(uint8_t), i, to);
		}
	}
	return fsize;
}