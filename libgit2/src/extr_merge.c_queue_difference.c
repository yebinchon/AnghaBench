
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_diff_find_data {int diff_list; int df_data; } ;
typedef int git_index_entry ;


 scalar_t__ index_entry_cmp (int const*,int const*) ;
 int merge_diff_list_insert_conflict (int ,int *,int const**) ;
 int merge_diff_list_insert_unmodified (int ,int const**) ;

__attribute__((used)) static int queue_difference(const git_index_entry **entries, void *data)
{
 struct merge_diff_find_data *find_data = data;
 bool item_modified = 0;
 size_t i;

 if (!entries[0] || !entries[1] || !entries[2]) {
  item_modified = 1;
 } else {
  for (i = 1; i < 3; i++) {
   if (index_entry_cmp(entries[0], entries[i]) != 0) {
    item_modified = 1;
    break;
   }
  }
 }

 return item_modified ?
  merge_diff_list_insert_conflict(
   find_data->diff_list, &find_data->df_data, entries) :
  merge_diff_list_insert_unmodified(find_data->diff_list, entries);
}
