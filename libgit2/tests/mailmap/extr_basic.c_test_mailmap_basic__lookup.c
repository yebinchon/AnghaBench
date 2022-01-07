
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int real_name; } ;
typedef TYPE_1__ git_mailmap_entry ;


 int cl_assert (TYPE_1__ const*) ;
 int cl_assert_equal_s (int ,char*) ;
 TYPE_1__* git_mailmap_entry_lookup (int ,char*,char*) ;
 int mailmap ;

void test_mailmap_basic__lookup(void)
{
 const git_mailmap_entry *entry = git_mailmap_entry_lookup(
  mailmap, "Typoed the name once", "foo@baz.com");
 cl_assert(entry);
 cl_assert_equal_s(entry->real_name, "Foo bar");
}
