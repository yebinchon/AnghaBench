
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ignore_case; int reuc; int entries; int reuc_search; int entries_search_path; int entries_search; int entries_cmp_path; } ;
typedef TYPE_1__ git_index ;


 int git__strcasecmp_cb ;
 int git__strcmp_cb ;
 int git_index_entry_cmp ;
 int git_index_entry_icmp ;
 int git_index_entry_isrch ;
 int git_index_entry_srch ;
 int git_vector_set_cmp (int *,int ) ;
 int git_vector_sort (int *) ;
 int index_entry_isrch_path ;
 int index_entry_srch_path ;
 int reuc_cmp ;
 int reuc_icmp ;
 int reuc_isrch ;
 int reuc_srch ;

void git_index__set_ignore_case(git_index *index, bool ignore_case)
{
 index->ignore_case = ignore_case;

 if (ignore_case) {
  index->entries_cmp_path = git__strcasecmp_cb;
  index->entries_search = git_index_entry_isrch;
  index->entries_search_path = index_entry_isrch_path;
  index->reuc_search = reuc_isrch;
 } else {
  index->entries_cmp_path = git__strcmp_cb;
  index->entries_search = git_index_entry_srch;
  index->entries_search_path = index_entry_srch_path;
  index->reuc_search = reuc_srch;
 }

 git_vector_set_cmp(&index->entries,
  ignore_case ? git_index_entry_icmp : git_index_entry_cmp);
 git_vector_sort(&index->entries);

 git_vector_set_cmp(&index->reuc, ignore_case ? reuc_icmp : reuc_cmp);
 git_vector_sort(&index->reuc);
}
