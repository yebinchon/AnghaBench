
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_object (char*,int *) ;

void test_refs_revparse__nonexistant_object(void)
{
 test_object("this-does-not-exist", ((void*)0));
 test_object("this-does-not-exist^1", ((void*)0));
 test_object("this-does-not-exist~2", ((void*)0));
}
