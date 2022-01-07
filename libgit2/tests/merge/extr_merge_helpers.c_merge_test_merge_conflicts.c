
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct merge_index_conflict_data {int dummy; } ;
struct TYPE_3__ {size_t length; int ** contents; } ;
typedef TYPE_1__ git_vector ;
typedef int git_merge_diff ;


 int index_conflict_data_eq_merge_diff (struct merge_index_conflict_data const*,int *) ;

int merge_test_merge_conflicts(git_vector *conflicts, const struct merge_index_conflict_data expected[], size_t expected_len)
{
 git_merge_diff *actual;
 size_t i;

 if (conflicts->length != expected_len)
  return 0;

 for (i = 0; i < expected_len; i++) {
  actual = conflicts->contents[i];

  if (!index_conflict_data_eq_merge_diff(&expected[i], actual))
   return 0;
 }

 return 1;
}
