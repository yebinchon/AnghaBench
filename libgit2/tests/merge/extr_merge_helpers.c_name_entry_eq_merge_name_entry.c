
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct merge_name_entry {int their_path; int our_path; int ancestor_path; } ;
struct TYPE_3__ {int theirs; int ours; int ancestor; } ;
typedef TYPE_1__ git_index_name_entry ;


 scalar_t__ name_entry_eq (int ,int ) ;

__attribute__((used)) static int name_entry_eq_merge_name_entry(const struct merge_name_entry *expected, const git_index_name_entry *actual)
{
 if (name_entry_eq(expected->ancestor_path, actual->ancestor) == 0 ||
  name_entry_eq(expected->our_path, actual->ours) == 0 ||
  name_entry_eq(expected->their_path, actual->theirs) == 0)
  return 0;

 return 1;
}
