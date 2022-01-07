
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_absent (char*,char*) ;

void test_core_memmem__absent(void)
{
 assert_absent("a", "b");
 assert_absent("a", "aa");
 assert_absent("ba", "ab");
 assert_absent("ba", "ab");
 assert_absent("abc", "abcd");
 assert_absent("abcabcabc", "bcac");
}
