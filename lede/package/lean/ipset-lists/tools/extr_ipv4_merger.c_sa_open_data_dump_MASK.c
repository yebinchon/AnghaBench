#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sa_open_data {size_t tmp_length; TYPE_1__* tmp_base; } ;
struct TYPE_2__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 

__attribute__((used)) static void FUNC2(struct sa_open_data *od)
{
	size_t i;
	char s1[20], s2[20];

	for (i = 0; i < od->tmp_length; i++) {
		FUNC1("%s-%s\n", FUNC0(od->tmp_base[i].start, s1),
			FUNC0(od->tmp_base[i].end, s2));
	}
}