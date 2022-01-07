
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node ;
typedef int event ;


 int * _cur_event ;
 int recalc_tree_ (int *) ;
 int sp_init () ;

inline int recalc_tree (node *v, event *cur_event) {
  sp_init();
  _cur_event = cur_event;

  return recalc_tree_ (v);
}
