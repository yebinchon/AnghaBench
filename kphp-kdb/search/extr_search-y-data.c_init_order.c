
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_RATES ;
 int Q_order ;
 int Q_type ;
 int assert (int) ;
 int * evaluate_rating ;
 int * get_rating ;
 int * get_rating_as_object_id ;
 int * random_rating ;
 int vkprintf (int,char*,int,int) ;

__attribute__((used)) static void init_order (void) {
  Q_type = Q_order & 0xff;
  vkprintf (3, "Q_order = %d, Q_type = %d\n", Q_order, Q_type);
  evaluate_rating = ((void*)0);
  if (Q_type == MAX_RATES + 1) {
    evaluate_rating = random_rating;
  } else if (Q_type == MAX_RATES) {
    evaluate_rating = get_rating_as_object_id;
  } else {
    assert (Q_type <= 15);
    evaluate_rating = get_rating;
  }
}
