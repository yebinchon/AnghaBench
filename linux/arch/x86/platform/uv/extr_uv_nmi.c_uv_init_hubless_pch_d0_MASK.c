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
struct TYPE_3__ {int /*<<< orphan*/  data; int /*<<< orphan*/  mask; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  PAD_OWN_GPP_D_0 ; 
 int* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* init_nmi ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	int i, read;

	read = *FUNC1(PAD_OWN_GPP_D_0);
	if (read != 0) {
		FUNC3("UV: Hubless NMI already configured\n");
		return;
	}

	FUNC2("UV: Initializing UV Hubless NMI on PCH\n");
	for (i = 0; i < FUNC0(init_nmi); i++) {
		FUNC4(init_nmi[i].offset,
					init_nmi[i].mask,
					init_nmi[i].data);
	}
}