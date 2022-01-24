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
struct TYPE_3__ {int* arr; } ;
typedef  TYPE_1__ data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 

__attribute__((used)) static void
FUNC1(data_t *data) {
	int num = data->arr[0];
	for (int i = 0; i < 10; i++) {
		FUNC0(num, data->arr[i], "Data consistency error");
	}
}