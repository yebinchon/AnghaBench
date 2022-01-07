
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrdb_state ;


 int * _mrdb_state ;

void
mrdb_state_set(mrdb_state *mrdb)
{
  _mrdb_state = mrdb;
}
