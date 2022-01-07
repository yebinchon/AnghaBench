
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_add_friend {int user_id; int friend_id; int cat; int type; } ;
struct friend {int id; int cat; struct friend* next; } ;


 struct friend** Friends ;
 int* I ;
 int LEV_FR_ADD_FRIENDREQ ;
 int adj_rec ;
 int conv_uid (int) ;
 size_t fr_cat ;
 size_t fr_confirmed ;
 size_t fr_friend_id ;
 size_t fr_user_id ;
 struct friend* gmalloc (int) ;
 int user_id ;
 struct lev_add_friend* write_alloc (int) ;

void process_friends_row (void) {
  user_id = I[fr_friend_id];
  int friend_id = I[fr_user_id];
  int uid = conv_uid (user_id);

  if (uid < 0 || friend_id <= 0) {
    return;
  }

  if (I[fr_confirmed] > 0) {
    struct friend *p = gmalloc (sizeof (struct friend));
    p->next = Friends[uid];
    p->id = friend_id;
    p->cat = (I[fr_cat] & 0x1fe) | 1;
    Friends[uid] = p;

    adj_rec++;
  } else if (!I[fr_confirmed]) {
    struct lev_add_friend *E = write_alloc (16);
    E->type = LEV_FR_ADD_FRIENDREQ;
    E->user_id = user_id;
    E->friend_id = friend_id;
    E->cat = (I[fr_cat] & 0x1fe) | 1;

    adj_rec++;
  }

}
