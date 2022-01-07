
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_mem_pool_t ;
typedef int h2o_iovec_t ;


 int H2O_STRLIT (char*) ;
 int h2o_iovec_init (int ) ;
 int h2o_mem_clear_pool (int *) ;
 int h2o_mem_init_pool (int *) ;
 int ok (int) ;
 size_t* process_range (int *,int *,int,size_t*) ;

__attribute__((used)) static void test_process_range(void)
{
    h2o_mem_pool_t testpool;
    size_t ret, *ranges;
    h2o_iovec_t testrange;
    h2o_mem_init_pool(&testpool);

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=, 0-10"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ret == 1);
        ok(*ranges++ == 0);
        ok(*ranges == 11);
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=60-"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ret == 1);
        ok(*ranges++ == 60);
        ok(*ranges == 40);
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=-10"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ret == 1);
        ok(*ranges++ == 90);
        ok(*ranges == 10);
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=0-10, -10"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ret == 2);
        ok(*ranges++ == 0);
        ok(*ranges++ == 11);
        ok(*ranges++ == 90);
        ok(*ranges == 10);
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=0-0, 20-89"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ret == 2);
        ok(*ranges++ == 0);
        ok(*ranges++ == 1);
        ok(*ranges++ == 20);
        ok(*ranges == 70);
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=-10,-20"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ret == 2);
        ok(*ranges++ == 90);
        ok(*ranges++ == 10);
        ok(*ranges++ == 80);
        ok(*ranges++ == 20);
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=100-102"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ranges == ((void*)0));
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=70-21"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ranges == ((void*)0));
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=90-102"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ret == 1);
        ok(*ranges++ == 90);
        ok(*ranges == 10);
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=-200"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ret == 1);
        ok(*ranges++ == 0);
        ok(*ranges == 100);
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=100-102,  90-102, 72-30,-22, 95-"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ret == 3);
        ok(*ranges++ == 90);
        ok(*ranges++ == 10);
        ok(*ranges++ == 78);
        ok(*ranges++ == 22);
        ok(*ranges++ == 95);
        ok(*ranges++ == 5);
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes 20-1002"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ranges == ((void*)0));
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes="));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ranges == ((void*)0));
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bsdfeadsfjwleakjf"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ranges == ((void*)0));
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=100-102, 90-102, -72-30,-22,95-"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ranges == ((void*)0));
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=10-12-13, 90-102, -72, -22, 95-"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ranges == ((void*)0));
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=100-102, 90-102, 70-39, -22$"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ranges == ((void*)0));
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=-0"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ranges == ((void*)0));
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=20-200"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ret == 1);
        ok(*ranges++ == 20);
        ok(*ranges == 80);
    }

    {
        ranges = process_range(&testpool, &testrange, 1000, &ret);
        ok(ret == 1);
        ok(*ranges++ == 20);
        ok(*ranges == 181);
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=,\t,1-3 ,, ,5-9,"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ret == 2);
        ok(*ranges++ == 1);
        ok(*ranges++ == 3);
        ok(*ranges++ == 5);
        ok(*ranges == 5);
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes= 1-3"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ranges == ((void*)0));
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=1-3 5-10"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ranges == ((void*)0));
    }

    {
        testrange = h2o_iovec_init(H2O_STRLIT("bytes=1-\t,5-10"));
        ranges = process_range(&testpool, &testrange, 100, &ret);
        ok(ret == 2);
        ok(*ranges++ == 1);
        ok(*ranges++ == 99);
        ok(*ranges++ == 5);
        ok(*ranges == 6);
    }

    h2o_mem_clear_pool(&testpool);
}
