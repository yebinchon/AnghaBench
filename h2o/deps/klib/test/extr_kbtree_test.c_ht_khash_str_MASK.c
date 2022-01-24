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
 int /*<<< orphan*/  KB_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int data_size ; 
 int h ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  str ; 
 char** str_data ; 

void FUNC8()
{
	int i;
	char **data = str_data;
	FUNC6(str) *h;

	h = FUNC3(str, KB_DEFAULT_SIZE);
	for (i = 0; i < data_size; ++i) {
		if (FUNC2(str, h, data[i]) == 0) FUNC4(str, h, data[i]);
		else FUNC1(str, h, data[i]);
	}
	FUNC7("[ht_khash_int] size: %d\n", FUNC5(h));
	FUNC0(h);
}