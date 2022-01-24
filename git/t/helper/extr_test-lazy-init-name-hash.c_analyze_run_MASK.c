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
typedef  scalar_t__ uint64_t ;
struct TYPE_3__ {int cache_nr; } ;

/* Variables and functions */
 int analyze ; 
 scalar_t__ analyze_step ; 
 int count ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,double,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC5 (TYPE_1__*,int) ; 
 TYPE_1__ the_index ; 

__attribute__((used)) static void FUNC6(void)
{
	uint64_t t1s, t1m, t2s, t2m;
	int cache_nr_limit;
	int nr_threads_used = 0;
	int i;
	int nr;

	FUNC4();
	cache_nr_limit = the_index.cache_nr;
	FUNC0();

	nr = analyze;
	while (1) {
		uint64_t sum_single = 0;
		uint64_t sum_multi = 0;
		uint64_t avg_single;
		uint64_t avg_multi;

		if (nr > cache_nr_limit)
			nr = cache_nr_limit;

		for (i = 0; i < count; i++) {
			FUNC4();
			the_index.cache_nr = nr; /* cheap truncate of index */
			t1s = FUNC2();
			FUNC5(&the_index, 0);
			t2s = FUNC2();
			sum_single += (t2s - t1s);
			the_index.cache_nr = cache_nr_limit;
			FUNC0();

			FUNC4();
			the_index.cache_nr = nr; /* cheap truncate of index */
			t1m = FUNC2();
			nr_threads_used = FUNC5(&the_index, 1);
			t2m = FUNC2();
			sum_multi += (t2m - t1m);
			the_index.cache_nr = cache_nr_limit;
			FUNC0();

			if (!nr_threads_used)
				FUNC3("    [size %8d] [single %f]   non-threaded code path used\n",
					   nr, ((double)(t2s - t1s))/1000000000);
			else
				FUNC3("    [size %8d] [single %f] %c [multi %f %d]\n",
					   nr,
					   ((double)(t2s - t1s))/1000000000,
					   (((t2s - t1s) < (t2m - t1m)) ? '<' : '>'),
					   ((double)(t2m - t1m))/1000000000,
					   nr_threads_used);
			FUNC1(stdout);
		}
		if (count > 1) {
			avg_single = sum_single / count;
			avg_multi = sum_multi / count;
			if (!nr_threads_used)
				FUNC3("avg [size %8d] [single %f]\n",
					   nr,
					   (double)avg_single/1000000000);
			else
				FUNC3("avg [size %8d] [single %f] %c [multi %f %d]\n",
					   nr,
					   (double)avg_single/1000000000,
					   (avg_single < avg_multi ? '<' : '>'),
					   (double)avg_multi/1000000000,
					   nr_threads_used);
			FUNC1(stdout);
		}

		if (nr >= cache_nr_limit)
			return;
		nr += analyze_step;
	}
}