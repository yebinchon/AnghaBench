
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLAG_ENTRY_SORT_SEARCH ;
 int FLAG_PRIORITY_SORT_SEARCH ;
 int FLAG_REVERSE_SEARCH ;
 int MAX_RATES ;
 int Q_order ;
 int Q_type ;
 int assert (int) ;
 int * evaluate_rating ;
 int * evaluate_relevance_search_rating ;
 int * get_rating ;
 int * get_rating_as_object_id ;
 int * mix_priority_with_object_id ;
 int * mix_priority_with_rating ;
 int optional_tags_init () ;
 int order ;
 int * random_rating ;
 int tbl_relevance_init () ;
 int vkprintf (int,char*,int,int,int) ;

__attribute__((used)) static void init_order (void) {
  Q_type = Q_order & 0xff;
  order = (Q_order & FLAG_REVERSE_SEARCH) ? 2 : 1;
  vkprintf (3, "Q_order = %d, Q_type = %d, order = %d\n", Q_order, Q_type, order);
  evaluate_rating = ((void*)0);
  if (Q_type == MAX_RATES + 2) {
    tbl_relevance_init ();
    optional_tags_init ();
    evaluate_rating = evaluate_relevance_search_rating;
  } else if (Q_type == MAX_RATES + 1) {
    evaluate_rating = random_rating;
  } else if (Q_order & (FLAG_ENTRY_SORT_SEARCH | FLAG_PRIORITY_SORT_SEARCH)) {
    if (Q_type == MAX_RATES) {
      evaluate_rating = mix_priority_with_object_id;
    } else {
      assert (Q_type <= 15);
      evaluate_rating = mix_priority_with_rating;
    }
  } else if (Q_type == MAX_RATES) {
    evaluate_rating = get_rating_as_object_id;
  } else {
    assert (Q_type <= 15);
    evaluate_rating = get_rating;
  }
}
