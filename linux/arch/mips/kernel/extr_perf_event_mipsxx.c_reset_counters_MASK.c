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
struct TYPE_2__ {int /*<<< orphan*/  (* write_counter ) (int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_1__ mipspmu ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *arg)
{
	int counters = (int)(long)arg;
	switch (counters) {
	case 4:
		FUNC0(3, 0);
		mipspmu.write_counter(3, 0);
		/* fall through */
	case 3:
		FUNC0(2, 0);
		mipspmu.write_counter(2, 0);
		/* fall through */
	case 2:
		FUNC0(1, 0);
		mipspmu.write_counter(1, 0);
		/* fall through */
	case 1:
		FUNC0(0, 0);
		mipspmu.write_counter(0, 0);
		/* fall through */
	}
}