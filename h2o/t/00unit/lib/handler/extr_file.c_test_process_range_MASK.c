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
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;
typedef  int /*<<< orphan*/  h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 size_t* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,size_t*) ; 

__attribute__((used)) static void FUNC6(void)
{
    h2o_mem_pool_t testpool;
    size_t ret, *ranges;
    h2o_iovec_t testrange;
    FUNC3(&testpool);

    { /* check single range within filesize */
        testrange = FUNC1(FUNC0("bytes=, 0-10"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ret == 1);
        FUNC4(*ranges++ == 0);
        FUNC4(*ranges == 11);
    }

    { /* check single range with only start */
        testrange = FUNC1(FUNC0("bytes=60-"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ret == 1);
        FUNC4(*ranges++ == 60);
        FUNC4(*ranges == 40);
    }

    { /* check single suffix range */
        testrange = FUNC1(FUNC0("bytes=-10"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ret == 1);
        FUNC4(*ranges++ == 90);
        FUNC4(*ranges == 10);
    }

    { /* this and next two check multiple ranges within filesize */
        testrange = FUNC1(FUNC0("bytes=0-10, -10"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ret == 2);
        FUNC4(*ranges++ == 0);
        FUNC4(*ranges++ == 11);
        FUNC4(*ranges++ == 90);
        FUNC4(*ranges == 10);
    }

    {
        testrange = FUNC1(FUNC0("bytes=0-0, 20-89"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ret == 2);
        FUNC4(*ranges++ == 0);
        FUNC4(*ranges++ == 1);
        FUNC4(*ranges++ == 20);
        FUNC4(*ranges == 70);
    }

    {
        testrange = FUNC1(FUNC0("bytes=-10,-20"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ret == 2);
        FUNC4(*ranges++ == 90);
        FUNC4(*ranges++ == 10);
        FUNC4(*ranges++ == 80);
        FUNC4(*ranges++ == 20);
    }

    { /* check ranges entirely out of filesize */
        testrange = FUNC1(FUNC0("bytes=100-102"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ranges == NULL);
    }

    { /* check ranges with "negative" length */
        testrange = FUNC1(FUNC0("bytes=70-21"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ranges == NULL);
    }

    { /* check ranges with one side inside filesize */
        testrange = FUNC1(FUNC0("bytes=90-102"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ret == 1);
        FUNC4(*ranges++ == 90);
        FUNC4(*ranges == 10);
    }

    { /* check suffix range larger than filesize */
        testrange = FUNC1(FUNC0("bytes=-200"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ret == 1);
        FUNC4(*ranges++ == 0);
        FUNC4(*ranges == 100);
    }

    { /* check multiple ranges with unsatisfiable ranges, but also contain satisfiable ranges */
        testrange = FUNC1(FUNC0("bytes=100-102,  90-102, 72-30,-22, 95-"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ret == 3);
        FUNC4(*ranges++ == 90);
        FUNC4(*ranges++ == 10);
        FUNC4(*ranges++ == 78);
        FUNC4(*ranges++ == 22);
        FUNC4(*ranges++ == 95);
        FUNC4(*ranges++ == 5);
    }

    { /* this and next 6 check malformed ranges */
        testrange = FUNC1(FUNC0("bytes 20-1002"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ranges == NULL);
    }

    {
        testrange = FUNC1(FUNC0("bytes="));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ranges == NULL);
    }

    {
        testrange = FUNC1(FUNC0("bsdfeadsfjwleakjf"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ranges == NULL);
    }

    {
        testrange = FUNC1(FUNC0("bytes=100-102, 90-102, -72-30,-22,95-"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ranges == NULL);
    }

    {
        testrange = FUNC1(FUNC0("bytes=10-12-13, 90-102, -72, -22, 95-"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ranges == NULL);
    }

    {
        testrange = FUNC1(FUNC0("bytes=100-102, 90-102, 70-39, -22$"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ranges == NULL);
    }

    {
        testrange = FUNC1(FUNC0("bytes=-0"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ranges == NULL);
    }

    { /* check same ranges with different filesize */
        testrange = FUNC1(FUNC0("bytes=20-200"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ret == 1);
        FUNC4(*ranges++ == 20);
        FUNC4(*ranges == 80);
    }

    {
        ranges = FUNC5(&testpool, &testrange, 1000, &ret);
        FUNC4(ret == 1);
        FUNC4(*ranges++ == 20);
        FUNC4(*ranges == 181);
    }

    { /* check a range with plenty of WS and COMMA */
        testrange = FUNC1(FUNC0("bytes=,\t,1-3 ,, ,5-9,"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ret == 2);
        FUNC4(*ranges++ == 1);
        FUNC4(*ranges++ == 3);
        FUNC4(*ranges++ == 5);
        FUNC4(*ranges == 5);
    }

    {
        testrange = FUNC1(FUNC0("bytes= 1-3"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ranges == NULL);
    }

    {
        testrange = FUNC1(FUNC0("bytes=1-3 5-10"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ranges == NULL);
    }

    {
        testrange = FUNC1(FUNC0("bytes=1-\t,5-10"));
        ranges = FUNC5(&testpool, &testrange, 100, &ret);
        FUNC4(ret == 2);
        FUNC4(*ranges++ == 1);
        FUNC4(*ranges++ == 99);
        FUNC4(*ranges++ == 5);
        FUNC4(*ranges == 6);
    }

    FUNC2(&testpool);
}