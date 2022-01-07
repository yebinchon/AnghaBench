
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_found (char*,char*,int) ;

void test_core_memmem__found(void)
{
 assert_found("a", "a", 0);
 assert_found("ab", "a", 0);
 assert_found("ba", "a", 1);
 assert_found("aa", "a", 0);
 assert_found("aab", "aa", 0);
 assert_found("baa", "aa", 1);
 assert_found("dabc", "abc", 1);
 assert_found("abababc", "abc", 4);
}
