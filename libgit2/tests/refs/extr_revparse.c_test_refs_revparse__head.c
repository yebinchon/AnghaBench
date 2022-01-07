
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_object (char*,char*) ;

void test_refs_revparse__head(void)
{
 test_object("HEAD", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 test_object("HEAD^0", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 test_object("HEAD~0", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 test_object("master", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
}
