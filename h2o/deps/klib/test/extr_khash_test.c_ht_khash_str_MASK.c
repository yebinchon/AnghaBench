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
 int data_size ; 
 int h ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int,char*,int*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  str ; 
 char** str_data ; 

void FUNC7()
{
	int i, ret;
	char **data = str_data;
	FUNC5(str) *h;
	unsigned k;

	h = FUNC2(str);
	for (i = 0; i < data_size; ++i) {
		k = FUNC3(str, h, data[i], &ret);
		if (!ret) FUNC0(str, h, k);
	}
	FUNC6("[ht_khash_int] size: %u\n", FUNC4(h));
	FUNC1(str, h);
}