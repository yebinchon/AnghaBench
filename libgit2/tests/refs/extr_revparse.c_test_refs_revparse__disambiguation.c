
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_object (char*,char*) ;

void test_refs_revparse__disambiguation(void)
{
 test_object("e90810b", "7b4384978d2493e851f9cca7858815fac9b10980");
 test_object("e90810", "e90810b8df3e80c413d903f631643c716887138d");
}
