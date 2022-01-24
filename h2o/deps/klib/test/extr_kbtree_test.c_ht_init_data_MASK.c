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
 scalar_t__ FUNC0 (int,int) ; 
 int data_size ; 
 int FUNC1 () ; 
 int* int_data ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char** str_data ; 
 char* FUNC5 (char*) ; 

void FUNC6()
{
	int i;
	char buf[256];
	FUNC2("--- generating data... ");
	FUNC4(11);
	int_data = (unsigned*)FUNC0(data_size, sizeof(unsigned));
	str_data = (char**)FUNC0(data_size, sizeof(char*));
	for (i = 0; i < data_size; ++i) {
		int_data[i] = (unsigned)(data_size * FUNC1() / 4) * 271828183u;
		FUNC3(buf, "%x", int_data[i]);
		str_data[i] = FUNC5(buf);
	}
	FUNC2("done!\n");
}