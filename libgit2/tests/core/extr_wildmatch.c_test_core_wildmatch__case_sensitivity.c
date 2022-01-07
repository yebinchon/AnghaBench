
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_matches (char*,char*,int,int,int,int) ;

void test_core_wildmatch__case_sensitivity(void)
{
 assert_matches("a", "[A-Z]", 0, 1, 0, 1);
 assert_matches("A", "[A-Z]", 1, 1, 1, 1);
 assert_matches("A", "[a-z]", 0, 1, 0, 1);
 assert_matches("a", "[a-z]", 1, 1, 1, 1);
 assert_matches("a", "[[:upper:]]", 0, 1, 0, 1);
 assert_matches("A", "[[:upper:]]", 1, 1, 1, 1);
 assert_matches("A", "[[:lower:]]", 0, 1, 0, 1);
 assert_matches("a", "[[:lower:]]", 1, 1, 1, 1);
 assert_matches("A", "[B-Za]", 0, 1, 0, 1);
 assert_matches("a", "[B-Za]", 1, 1, 1, 1);
 assert_matches("A", "[B-a]", 0, 1, 0, 1);
 assert_matches("a", "[B-a]", 1, 1, 1, 1);
 assert_matches("z", "[Z-y]", 0, 1, 0, 1);
 assert_matches("Z", "[Z-y]", 1, 1, 1, 1);
}
