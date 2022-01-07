
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_absent (char*,char*) ;

void test_core_memmem__edgecases(void)
{
 assert_absent(((void*)0), ((void*)0));
 assert_absent("a", ((void*)0));
 assert_absent(((void*)0), "a");
 assert_absent("", "a");
 assert_absent("a", "");
}
