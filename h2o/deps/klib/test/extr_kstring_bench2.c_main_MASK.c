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
typedef  scalar_t__ clock_t ;

/* Variables and functions */
 char* FUNC0 (char*,int,char*,int) ; 
 float CLOCKS_PER_SEC ; 
 int /*<<< orphan*/  alphabet ; 
 char* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,float) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 char* FUNC8 (char*,int,char*,int) ; 
 int pat_len ; 
 int repeat ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int str_len ; 
 char* FUNC10 (char*,char*,int) ; 

int FUNC11()
{
	char *data;
	int i;
	clock_t t;
	t = FUNC2();
	data = FUNC4(str_len, alphabet);
	FUNC3(stderr, "Generate data in %.3f sec\n", (float)(FUNC2() - t) / CLOCKS_PER_SEC);
	{
		t = FUNC2(); FUNC9(1331);
		for (i = 0; i < repeat; ++i) {
			int y = FUNC6() % (str_len - pat_len);
			char *ret;
			ret = FUNC5(data, str_len, data + y, pat_len, 0);
//			printf("%d, %d\n", (int)(ret - data), y);
		}
		FUNC3(stderr, "Search patterns in %.3f sec\n", (float)(FUNC2() - t) / CLOCKS_PER_SEC);
	}
	if (1) {
		t = FUNC2(); FUNC9(1331);
		for (i = 0; i < repeat; ++i) {
			int y = FUNC6() % (str_len - pat_len);
			char *ret;
			ret = FUNC0(data, str_len, data + y, pat_len);
//			printf("%d, %d\n", (int)(ret - data), y);
		}
		FUNC3(stderr, "Search patterns in %.3f sec\n", (float)(FUNC2() - t) / CLOCKS_PER_SEC);
	}
#ifdef HAVE_STRNSTR
	if (1) {
		char *tmp;
		t = clock(); srand48(1331);
		tmp = calloc(pat_len+1, 1);
		for (i = 0; i < repeat; ++i) {
			int y = lrand48() % (str_len - pat_len);
			char *ret;
			memcpy(tmp, data + y, pat_len);
			ret = strnstr(data, tmp, str_len);
		}
		fprintf(stderr, "Search patterns in %.3f sec\n", (float)(clock() - t) / CLOCKS_PER_SEC);		
	}
#endif
#ifdef HAVE_MEMMEM
	if (1) {
		t = clock(); srand48(1331);
		for (i = 0; i < repeat; ++i) {
			int y = lrand48() % (str_len - pat_len);
			char *ret;
			ret = memmem(data, str_len, data + y, pat_len);
//			printf("%d, %d\n", (int)(ret - data), y);
		}
		fprintf(stderr, "Search patterns in %.3f sec\n", (float)(clock() - t) / CLOCKS_PER_SEC);
	}
#endif
	return 0;
}