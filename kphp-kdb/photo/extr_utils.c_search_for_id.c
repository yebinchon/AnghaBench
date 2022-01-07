
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vptr ;
typedef int restore_list ;


 scalar_t__ _found ;
 int _found_a ;
 int _found_b ;
 int _needed_id ;
 int _prev_id ;
 scalar_t__ restore_list_del (int *,int ,int *,int *,int ) ;

void search_for_id (int *prev, vptr *_list_ptr) {
  if (_found > 0) {
    return;
  }
  restore_list *list = (restore_list *) *_list_ptr;

  _found = restore_list_del (list, _needed_id, &_found_a, &_found_b, _prev_id);
}
