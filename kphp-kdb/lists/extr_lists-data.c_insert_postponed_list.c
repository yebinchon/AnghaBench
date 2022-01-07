
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {int dummy; } ;
typedef int list_id_t ;


 int assert (int) ;
 int find_metafile (int ) ;
 int insert_postponed (int,struct lev_generic*,int) ;
 int log_event_size (struct lev_generic*) ;

int insert_postponed_list (list_id_t list_id, struct lev_generic *E) {
  int x = find_metafile (list_id);
  assert (x >= 0);



  int size = log_event_size (E);
  insert_postponed (x, E, size);
  return 1;
}
