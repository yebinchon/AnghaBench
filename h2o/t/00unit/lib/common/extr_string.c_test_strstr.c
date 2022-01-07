
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int h2o_strstr (char*,int,char*,int) ;
 int ok (int) ;

__attribute__((used)) static void test_strstr(void)
{
    ok(h2o_strstr("abcd", 4, "bc", 2) == 1);
    ok(h2o_strstr("abcd", 3, "bc", 2) == 1);
    ok(h2o_strstr("abcd", 2, "bc", 2) == -1);
}
