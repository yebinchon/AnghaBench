
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_matches (char*,char*,int,int,int,int) ;

void test_core_wildmatch__pathmatch(void)
{
 assert_matches("foo", "fo", 0, 0, 0, 0);
 assert_matches("foo/bar", "foo/bar", 1, 1, 1, 1);
 assert_matches("foo/bar", "foo/*", 1, 1, 1, 1);
 assert_matches("foo/bba/arr", "foo/*", 0, 0, 1, 1);
 assert_matches("foo/bba/arr", "foo/**", 1, 1, 1, 1);
 assert_matches("foo/bba/arr", "foo*", 0, 0, 1, 1);
 assert_matches("foo/bba/arr", "foo**", 0, 0, 1, 1);
 assert_matches("foo/bba/arr", "foo/*arr", 0, 0, 1, 1);
 assert_matches("foo/bba/arr", "foo/**arr", 0, 0, 1, 1);
 assert_matches("foo/bba/arr", "foo/*z", 0, 0, 0, 0);
 assert_matches("foo/bba/arr", "foo/**z", 0, 0, 0, 0);
 assert_matches("foo/bar", "foo?bar", 0, 0, 1, 1);
 assert_matches("foo/bar", "foo[/]bar", 0, 0, 1, 1);
 assert_matches("foo/bar", "foo[^a-z]bar", 0, 0, 1, 1);
 assert_matches("ab/cXd/efXg/hi", "*Xg*i", 0, 0, 1, 1);
}
