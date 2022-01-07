
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrdb_state ;
typedef int mrb_state ;


 int * _mrdb_state ;
 int * mrdb_state_new (int *) ;

mrdb_state*
mrdb_state_get(mrb_state *mrb)
{
  if (!_mrdb_state) {
    _mrdb_state = mrdb_state_new(mrb);
  }
  return _mrdb_state;
}
