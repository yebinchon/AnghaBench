
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int replace_email; int replace_name; int real_email; int real_name; } ;
typedef TYPE_1__ mailmap_entry ;
struct TYPE_10__ {int replace_email; int replace_name; int real_email; int real_name; } ;
typedef TYPE_2__ git_mailmap_entry ;
struct TYPE_11__ {int entries; } ;
typedef TYPE_3__ git_mailmap ;


 int cl_assert (TYPE_2__ const*) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_assert_equal_sz (size_t,int ) ;
 TYPE_2__* git_mailmap_entry_lookup (TYPE_3__ const*,int ,int ) ;
 int git_vector_length (int *) ;

__attribute__((used)) static void check_mailmap_entries(
 const git_mailmap *mailmap, const mailmap_entry *entries, size_t entries_size)
{
 const git_mailmap_entry *parsed;
 size_t idx;


 cl_assert_equal_sz(entries_size, git_vector_length(&mailmap->entries));


 for (idx = 0; idx < entries_size; ++idx) {
  parsed = git_mailmap_entry_lookup(
   mailmap, entries[idx].replace_name, entries[idx].replace_email);

  cl_assert(parsed);
  cl_assert_equal_s(parsed->real_name, entries[idx].real_name);
  cl_assert_equal_s(parsed->real_email, entries[idx].real_email);
  cl_assert_equal_s(parsed->replace_name, entries[idx].replace_name);
  cl_assert_equal_s(parsed->replace_email, entries[idx].replace_email);
 }
}
