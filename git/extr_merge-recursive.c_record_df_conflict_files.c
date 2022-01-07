
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct string_list_item {char* string; struct stage_data* util; } ;
struct string_list {int nr; struct string_list_item* items; int cmp; } ;
struct stage_data {TYPE_2__* stages; } ;
struct merge_options {TYPE_1__* priv; } ;
struct TYPE_6__ {struct stage_data* util; } ;
struct TYPE_5__ {int mode; } ;
struct TYPE_4__ {struct string_list df_conflict_file_set; scalar_t__ call_depth; } ;


 struct string_list STRING_LIST_INIT_NODUP ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ memcmp (char const*,char const*,int) ;
 TYPE_3__* string_list_append (struct string_list*,char*) ;
 int string_list_clear (struct string_list*,int) ;
 int string_list_df_name_compare ;
 int string_list_insert (struct string_list*,char const*) ;
 int string_list_sort (struct string_list*) ;
 int strlen (char const*) ;

__attribute__((used)) static void record_df_conflict_files(struct merge_options *opt,
         struct string_list *entries)
{
 struct string_list df_sorted_entries = STRING_LIST_INIT_NODUP;
 const char *last_file = ((void*)0);
 int last_len = 0;
 int i;





 if (opt->priv->call_depth)
  return;


 for (i = 0; i < entries->nr; i++) {
  struct string_list_item *next = &entries->items[i];
  string_list_append(&df_sorted_entries, next->string)->util =
       next->util;
 }
 df_sorted_entries.cmp = string_list_df_name_compare;
 string_list_sort(&df_sorted_entries);

 string_list_clear(&opt->priv->df_conflict_file_set, 1);
 for (i = 0; i < df_sorted_entries.nr; i++) {
  const char *path = df_sorted_entries.items[i].string;
  int len = strlen(path);
  struct stage_data *e = df_sorted_entries.items[i].util;







  if (last_file &&
      len > last_len &&
      memcmp(path, last_file, last_len) == 0 &&
      path[last_len] == '/') {
   string_list_insert(&opt->priv->df_conflict_file_set, last_file);
  }







  if (S_ISREG(e->stages[2].mode) || S_ISLNK(e->stages[2].mode)) {
   last_file = path;
   last_len = len;
  } else {
   last_file = ((void*)0);
  }
 }
 string_list_clear(&df_sorted_entries, 0);
}
