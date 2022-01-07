
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_object (char*,char*) ;

void test_refs_revparse__date(void)
{
 test_object("HEAD@{10 years ago}", ((void*)0));

 test_object("HEAD@{1 second}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 test_object("HEAD@{1 second ago}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 test_object("HEAD@{2 days ago}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 test_object("master@{2012-04-30 17:22:42 +0000}", ((void*)0));
 test_object("master@{2012-04-30 09:22:42 -0800}", ((void*)0));





 test_object("master@{2012-04-30 17:22:43 +0000}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
 test_object("master@{2012-04-30 09:22:43 -0800}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");





 test_object("master@{2012-4-30 09:23:27 -0800}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");





 test_object("master@{2012-05-03}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 test_object("master@{1335806603}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 test_object("master@{1335806602}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
}
