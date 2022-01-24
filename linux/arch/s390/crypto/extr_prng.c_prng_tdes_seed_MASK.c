#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_3__ {scalar_t__ reseed_counter; scalar_t__ parm_block; } ;
struct TYPE_4__ {TYPE_1__ prngws; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 TYPE_2__* prng_data ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(int nbytes)
{
	char buf[16];
	int i = 0;

	FUNC0(nbytes > sizeof(buf));

	FUNC1(buf, nbytes);

	/* Add the entropy */
	while (nbytes >= 8) {
		*((__u64 *)prng_data->prngws.parm_block) ^= *((__u64 *)(buf+i));
		FUNC2();
		i += 8;
		nbytes -= 8;
	}
	FUNC2();
	prng_data->prngws.reseed_counter = 0;
}