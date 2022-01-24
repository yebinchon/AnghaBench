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
typedef  long khint32_t ;

/* Variables and functions */
 double UINT_MAX ; 
 scalar_t__ FUNC0 (int,int) ; 
 int data_size ; 
 int* int_data ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char** str_data ; 
 char* FUNC3 (char*) ; 

void FUNC4()
{
	int i;
	char buf[256];
	khint32_t x = 11;
	FUNC1("--- generating data... ");
	int_data = (unsigned*)FUNC0(data_size, sizeof(unsigned));
	str_data = (char**)FUNC0(data_size, sizeof(char*));
	for (i = 0; i < data_size; ++i) {
		int_data[i] = (unsigned)(data_size * ((double)x / UINT_MAX) / 4) * 271828183u;
		FUNC2(buf, "%x", int_data[i]);
		str_data[i] = FUNC3(buf);
		x = 1664525L * x + 1013904223L;
	}
	FUNC1("done!\n");
}