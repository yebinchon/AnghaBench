
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_mailmap_entry ;


 int cl_assert (int) ;
 int * git_mailmap_entry_lookup (int ,char*,char*) ;
 int mailmap ;

void test_mailmap_basic__lookup_not_found(void)
{
 const git_mailmap_entry *entry = git_mailmap_entry_lookup(
  mailmap, "Whoever", "doesnotexist@fo.com");
 cl_assert(!entry);
}
