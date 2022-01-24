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
typedef  int uint64_t ;
struct TYPE_3__ {int cache_nr; } ;

/* Variables and functions */
 int count ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,double,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC6 (TYPE_1__*,int) ; 
 TYPE_1__ the_index ; 

__attribute__((used)) static uint64_t FUNC7(int try_threaded)
{
	uint64_t t0, t1, t2;
	uint64_t sum = 0;
	uint64_t avg;
	int nr_threads_used;
	int i;

	for (i = 0; i < count; i++) {
		t0 = FUNC3();
		FUNC5();
		t1 = FUNC3();
		nr_threads_used = FUNC6(&the_index, try_threaded);
		t2 = FUNC3();

		sum += (t2 - t1);

		if (try_threaded && !nr_threads_used)
			FUNC0("non-threaded code path used");

		if (nr_threads_used)
			FUNC4("%f %f %d multi %d\n",
				   ((double)(t1 - t0))/1000000000,
				   ((double)(t2 - t1))/1000000000,
				   the_index.cache_nr,
				   nr_threads_used);
		else
			FUNC4("%f %f %d single\n",
				   ((double)(t1 - t0))/1000000000,
				   ((double)(t2 - t1))/1000000000,
				   the_index.cache_nr);
		FUNC2(stdout);

		FUNC1();
	}

	avg = sum / count;
	if (count > 1)
		FUNC4("avg %f %s\n",
			   (double)avg/1000000000,
			   (try_threaded) ? "multi" : "single");

	return avg;
}