
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 scalar_t__ git__strcasecmp (char*,char*) ;
 scalar_t__ strcasecmp (char*,char*) ;

void test_core_string__strcasecmp(void)
{
 cl_assert(git__strcasecmp("", "") == 0);
 cl_assert(git__strcasecmp("foo", "foo") == 0);
 cl_assert(git__strcasecmp("foo", "Foo") == 0);
 cl_assert(git__strcasecmp("foo", "FOO") == 0);
 cl_assert(git__strcasecmp("foo", "fOO") == 0);

 cl_assert(strcasecmp("rt\303\202of", "rt dev\302\266h") > 0);
 cl_assert(strcasecmp("e\342\202\254ghi=", "et") > 0);
 cl_assert(strcasecmp("rt dev\302\266h", "rt\303\202of") < 0);
 cl_assert(strcasecmp("et", "e\342\202\254ghi=") < 0);
 cl_assert(strcasecmp("\303\215", "\303\255") < 0);

 cl_assert(git__strcasecmp("rt\303\202of", "rt dev\302\266h") > 0);
 cl_assert(git__strcasecmp("e\342\202\254ghi=", "et") > 0);
 cl_assert(git__strcasecmp("rt dev\302\266h", "rt\303\202of") < 0);
 cl_assert(git__strcasecmp("et", "e\342\202\254ghi=") < 0);
 cl_assert(git__strcasecmp("\303\215", "\303\255") < 0);
}
