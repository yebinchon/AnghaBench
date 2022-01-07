
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_mf_add_exception {int user_id; int friend_id; } ;


 int LEV_MF_ADD_EXCEPTION ;
 int add_exception (struct lev_mf_add_exception*) ;
 struct lev_mf_add_exception* alloc_log_event (int ,int,int ) ;

int do_add_exception (int uid, int fid) {
  struct lev_mf_add_exception *E =
    alloc_log_event (LEV_MF_ADD_EXCEPTION, sizeof (struct lev_mf_add_exception), 0);

  E->user_id = uid;
  E->friend_id = fid;

  return add_exception (E);
}
