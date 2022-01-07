
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_t {int failed; } ;


 int _ok (int,char*,char const*) ;
 struct test_t* cur_tests ;
 int done_testing () ;
 int note (char*,char const*) ;
 int test_level ;

void subtest(const char *name, void (*cb)(void))
{
    struct test_t test = {}, *parent_tests;

    parent_tests = cur_tests;
    cur_tests = &test;
    ++test_level;

    note("Subtest: %s", name);

    cb();

    done_testing();

    --test_level;
    cur_tests = parent_tests;
    if (test.failed)
        cur_tests->failed = 1;
    _ok(! test.failed, "%s", name);
}
