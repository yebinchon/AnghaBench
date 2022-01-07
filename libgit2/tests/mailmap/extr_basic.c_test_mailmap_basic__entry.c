
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int replace_email; int replace_name; int real_email; int real_name; } ;
typedef TYPE_1__ git_mailmap_entry ;
struct TYPE_10__ {int replace_email; int replace_name; int real_email; int real_name; } ;
struct TYPE_9__ {int entries; } ;


 size_t ARRAY_SIZE (TYPE_5__*) ;
 int cl_assert (TYPE_1__ const*) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_assert_equal_sz (size_t,int ) ;
 TYPE_5__* expected ;
 TYPE_1__* git_mailmap_entry_lookup (TYPE_2__*,int ,int ) ;
 int git_vector_length (int *) ;
 TYPE_2__* mailmap ;

void test_mailmap_basic__entry(void)
{
 size_t idx;
 const git_mailmap_entry *entry;


 cl_assert_equal_sz(ARRAY_SIZE(expected), git_vector_length(&mailmap->entries));

 for (idx = 0; idx < ARRAY_SIZE(expected); ++idx) {

  entry = git_mailmap_entry_lookup(
   mailmap, expected[idx].replace_name, expected[idx].replace_email);

  cl_assert(entry);
  cl_assert_equal_s(entry->real_name, expected[idx].real_name);
  cl_assert_equal_s(entry->real_email, expected[idx].real_email);
  cl_assert_equal_s(entry->replace_name, expected[idx].replace_name);
  cl_assert_equal_s(entry->replace_email, expected[idx].replace_email);
 }
}
