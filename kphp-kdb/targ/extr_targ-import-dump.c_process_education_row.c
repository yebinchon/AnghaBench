
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_education {scalar_t__ reserved; void* edu_status; void* edu_form; void* country; void* city; void* university; void* faculty; void* chair; void* grad_year; void* user_id; int type; } ;


 void** I ;
 int LEV_TARG_EDUADD ;
 int LEV_TARG_EDUADD_PRIM ;
 int adj_rec ;
 size_t ed_chair ;
 size_t ed_city ;
 size_t ed_country ;
 size_t ed_faculty ;
 size_t ed_form ;
 size_t ed_graduation ;
 size_t ed_prime ;
 size_t ed_status ;
 size_t ed_university ;
 size_t ed_user_id ;
 int fits (void*) ;
 void* user_id ;
 struct lev_education* write_alloc (int) ;

void process_education_row (void) {
  struct lev_education *E;
  user_id = I[ed_user_id];

  if (!fits(user_id)) {
    return;
  }



  E = write_alloc (sizeof (*E));
  E->type = I[ed_prime] ? LEV_TARG_EDUADD_PRIM : LEV_TARG_EDUADD;
  E->user_id = I[ed_user_id];
  E->grad_year = I[ed_graduation];
  E->chair = I[ed_chair];
  E->faculty = I[ed_faculty];
  E->university = I[ed_university];
  E->city = I[ed_city];
  E->country = I[ed_country];
  E->edu_form = I[ed_form];
  E->edu_status = I[ed_status];
  E->reserved = 0;

  adj_rec++;

}
