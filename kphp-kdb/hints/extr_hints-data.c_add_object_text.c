
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_hints_add_object_text {char* text; scalar_t__ object_id; scalar_t__ object_type; int text_len; } ;


 int changes_count ;
 int changes_memory ;
 int check_object_id (scalar_t__) ;
 int check_text_len (int ) ;
 int check_type (scalar_t__) ;
 int chg_list_add_string (int *,int *,int,int,char*) ;
 scalar_t__ dl_get_memory_used () ;
 int fprintf (int ,char*,char*) ;
 int global_changes_en ;
 int global_changes_st ;
 scalar_t__ no_changes ;
 char* prepare_str (char*) ;
 int ** stat_global ;
 int stderr ;
 int verbosity ;
 scalar_t__ write_only ;

int add_object_text (struct lev_hints_add_object_text *E) {
  if (!check_type (E->object_type) || !check_object_id (E->object_id) || !check_text_len (E->text_len)) {
    return 0;
  }
  if (write_only || no_changes) {
    return 1;
  }

  changes_memory -= dl_get_memory_used();
  char *clone = prepare_str (E->text);
  changes_memory += dl_get_memory_used();
  if (clone == ((void*)0)) {
    if (verbosity > 1) {
      fprintf (stderr, "botva %s\n", E->text);
    }
    return 0;
  }

  stat_global[(int)E->object_type][1]++;

  chg_list_add_string (&global_changes_st, &global_changes_en, (int)E->object_type, (int)E->object_id, clone);
  changes_count++;

  return 1;
}
