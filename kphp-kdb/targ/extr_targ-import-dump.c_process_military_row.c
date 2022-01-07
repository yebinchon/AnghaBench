
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_military {void* finish; void* start; void* unit_id; void* user_id; int type; } ;


 void** I ;
 int LEV_TARG_MIL_ADD ;
 int adj_rec ;
 int fits (void*) ;
 size_t mi_finished ;
 size_t mi_member_id ;
 size_t mi_started ;
 size_t mi_unit_id ;
 void* user_id ;
 struct lev_military* write_alloc (int) ;

void process_military_row (void) {
  struct lev_military *E;
  user_id = I[mi_member_id];

  if (!fits(user_id)) {
    return;
  }

  E = write_alloc (sizeof (*E));
  E->type = LEV_TARG_MIL_ADD;
  E->user_id = I[mi_member_id];
  E->unit_id = I[mi_unit_id];
  E->start = I[mi_started];
  E->finish = I[mi_finished];

  adj_rec++;

}
