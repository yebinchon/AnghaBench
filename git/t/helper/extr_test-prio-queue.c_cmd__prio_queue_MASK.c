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
struct prio_queue {int /*<<< orphan*/ * compare; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  intcmp ; 
 void* FUNC2 (struct prio_queue*) ; 
 void* FUNC3 (struct prio_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct prio_queue*,int*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int* FUNC7 (int) ; 

int FUNC8(int argc, const char **argv)
{
	struct prio_queue pq = { &intcmp };

	while (*++argv) {
		if (!FUNC6(*argv, "get")) {
			void *peek = FUNC3(&pq);
			void *get = FUNC2(&pq);
			if (peek != get)
				FUNC0("peek and get results do not match");
			FUNC5(get);
		} else if (!FUNC6(*argv, "dump")) {
			void *peek;
			void *get;
			while ((peek = FUNC3(&pq))) {
				get = FUNC2(&pq);
				if (peek != get)
					FUNC0("peek and get results do not match");
				FUNC5(get);
			}
		} else if (!FUNC6(*argv, "stack")) {
			pq.compare = NULL;
		} else {
			int *v = FUNC7(sizeof(*v));
			*v = FUNC1(*argv);
			FUNC4(&pq, v);
		}
	}

	return 0;
}