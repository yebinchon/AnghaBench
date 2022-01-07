
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_matches (char*,char*,int,int,int,int) ;

void test_core_wildmatch__additional_with_malformed(void)
{
 assert_matches("]", "[\\\\-^]", 1, 1, 1, 1);
 assert_matches("[", "[\\\\-^]", 0, 0, 0, 0);
 assert_matches("-", "[\\-_]", 1, 1, 1, 1);
 assert_matches("]", "[\\]]", 1, 1, 1, 1);
 assert_matches("\\]", "[\\]]", 0, 0, 0, 0);
 assert_matches("\\", "[\\]]", 0, 0, 0, 0);
 assert_matches("ab", "a[]b", 0, 0, 0, 0);
 assert_matches("a[]b", "a[]b", 0, 0, 0, 0);
 assert_matches("ab[", "ab[", 0, 0, 0, 0);
 assert_matches("ab", "[!", 0, 0, 0, 0);
 assert_matches("ab", "[-", 0, 0, 0, 0);
 assert_matches("-", "[-]", 1, 1, 1, 1);
 assert_matches("-", "[a-", 0, 0, 0, 0);
 assert_matches("-", "[!a-", 0, 0, 0, 0);
 assert_matches("-", "[--A]", 1, 1, 1, 1);
 assert_matches("5", "[--A]", 1, 1, 1, 1);
 assert_matches(" ", "[ --]", 1, 1, 1, 1);
 assert_matches("$", "[ --]", 1, 1, 1, 1);
 assert_matches("-", "[ --]", 1, 1, 1, 1);
 assert_matches("0", "[ --]", 0, 0, 0, 0);
 assert_matches("-", "[---]", 1, 1, 1, 1);
 assert_matches("-", "[------]", 1, 1, 1, 1);
 assert_matches("j", "[a-e-n]", 0, 0, 0, 0);
 assert_matches("-", "[a-e-n]", 1, 1, 1, 1);
 assert_matches("a", "[!------]", 1, 1, 1, 1);
 assert_matches("[", "[]-a]", 0, 0, 0, 0);
 assert_matches("^", "[]-a]", 1, 1, 1, 1);
 assert_matches("^", "[!]-a]", 0, 0, 0, 0);
 assert_matches("[", "[!]-a]", 1, 1, 1, 1);
 assert_matches("^", "[a^bc]", 1, 1, 1, 1);
 assert_matches("-b]", "[a-]b]", 1, 1, 1, 1);
 assert_matches("\\", "[\\]", 0, 0, 0, 0);
 assert_matches("\\", "[\\\\]", 1, 1, 1, 1);
 assert_matches("\\", "[!\\\\]", 0, 0, 0, 0);
 assert_matches("G", "[A-\\\\]", 1, 1, 1, 1);
 assert_matches("aaabbb", "b*a", 0, 0, 0, 0);
 assert_matches("aabcaa", "*ba*", 0, 0, 0, 0);
 assert_matches(",", "[,]", 1, 1, 1, 1);
 assert_matches(",", "[\\\\,]", 1, 1, 1, 1);
 assert_matches("\\", "[\\\\,]", 1, 1, 1, 1);
 assert_matches("-", "[,-.]", 1, 1, 1, 1);
 assert_matches("+", "[,-.]", 0, 0, 0, 0);
 assert_matches("-.]", "[,-.]", 0, 0, 0, 0);
 assert_matches("2", "[\\1-\\3]", 1, 1, 1, 1);
 assert_matches("3", "[\\1-\\3]", 1, 1, 1, 1);
 assert_matches("4", "[\\1-\\3]", 0, 0, 0, 0);
 assert_matches("\\", "[[-\\]]", 1, 1, 1, 1);
 assert_matches("[", "[[-\\]]", 1, 1, 1, 1);
 assert_matches("]", "[[-\\]]", 1, 1, 1, 1);
 assert_matches("-", "[[-\\]]", 0, 0, 0, 0);
}
