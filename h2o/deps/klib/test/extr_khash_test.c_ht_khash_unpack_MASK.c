#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int key; int val; } ;
typedef  TYPE_1__ int_unpack_t ;

/* Variables and functions */
 int data_size ; 
 int h ; 
 unsigned int* int_data ; 
 int /*<<< orphan*/  iun ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int,TYPE_1__,int*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 

void FUNC7()
{
	int i, ret;
	unsigned *data = int_data;
	FUNC5(iun) *h;
	unsigned k;

	h = FUNC2(iun);
	for (i = 0; i < data_size; ++i) {
		int_unpack_t x;
		x.key = data[i]; x.val = i&0xff;
		k = FUNC3(iun, h, x, &ret);
		if (!ret) FUNC0(iun, h, k);
	}
	FUNC6("[ht_khash_unpack] size: %u (sizeof=%ld)\n", FUNC4(h), sizeof(int_unpack_t));
	FUNC1(iun, h);
}