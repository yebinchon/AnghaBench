
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct TYPE_13__ {int currId; } ;
struct TYPE_14__ {int object_old_n; char* object_data; int* object_indexes; char** object_names; int pref_table; int object_chg; TYPE_12__ object_table; int changed_objs; int flags; } ;
typedef TYPE_1__ user ;
typedef float rating ;
typedef TYPE_2__* change_list_ptr ;
struct TYPE_15__ {int type; int x; char* s; int val; int cnt; scalar_t__ timestamp; int number; int * next; } ;
typedef TYPE_2__ change_list ;


 scalar_t__ GET_USER_RATING_STATE (int ) ;
 int MAX_CNT ;
 float MAX_RATING ;
 int MAX_RATING_NUM ;
 int MEM_FLAG ;
 float RATING_NORM ;
 int SET_USER_RATING_STATE (int ,int) ;
 int TYPE_ID (int,int) ;
 scalar_t__ add_on_increment ;
 int assert (int) ;
 int chg_add (int *,int) ;
 int chg_del (int *,int) ;
 int dl_free (char*,int) ;
 char* dl_malloc (int) ;
 int expf (float) ;
 scalar_t__ fading ;
 int fprintf (int ,char*,int,int,int,...) ;
 int friend_changes ;
 long long* gen_hashes (char*) ;
 int htbl_add (int *,long long,int) ;
 int htbl_del (int *,long long,int) ;
 int ltbl_add (TYPE_12__*,int ) ;
 int* max_cnt_type ;
 int memcpy (char*,char*,int) ;
 scalar_t__ ratingT ;
 int rating_incr (float*,int,scalar_t__) ;
 int rating_num ;
 int stderr ;
 int strlen (char*) ;
 int user_get_object_local_id (TYPE_1__*,int,int) ;
 char* user_get_object_name (TYPE_1__*,int) ;
 float* user_get_object_rating (TYPE_1__*,int,int) ;
 scalar_t__ user_has_local_object (TYPE_1__*,int) ;
 int user_has_object (TYPE_1__*,int,int) ;
 int user_upd_object_size (TYPE_1__*) ;
 int vct_add (int *,int) ;
 int verbosity ;

void user_do_change (user *u, change_list_ptr change) {
  int type = change->type;
  int local_id;

  if (change->x == 0) {
    if (type == 0) {

      int object_n, num;
      for (object_n = u->object_old_n + u->object_table.currId - 1; object_n > 0; object_n--) {
        for (num = 0; num < rating_num; num++) {
          *user_get_object_rating (u, object_n, num) = 0.0f;
        }
      }
    } else if (type == 1 || type == 2) {

      u->flags = SET_USER_RATING_STATE(u->flags, type - 1);
    } else {
      assert (0);
    }
    return;
  }

  if (change->x < 0) {
    if (GET_USER_RATING_STATE(u->flags) == 0) {
      return;
    }

    int num = type / 256;
    int x = -change->x;
    type %= 256;
    local_id = user_has_object (u, type, x);
    if (verbosity > 1) {
      fprintf (stderr, "Incrementing object of type %d, object_id = %d, local_id = %d\n", type, x, local_id);
    }

    if (local_id != 0) {
      if (num >= MAX_RATING_NUM) {
        if (fading) {
          *user_get_object_rating (u, local_id, num - MAX_RATING_NUM) = (rating)(change->val * expf (((rating)(change->timestamp - ratingT)) / RATING_NORM));
        } else {
          rating *a = user_get_object_rating (u, local_id, num - MAX_RATING_NUM);
          *a = change->val;
          if (*a < -MAX_RATING) {
            *a = -MAX_RATING;
          }
          if (*a > MAX_RATING) {
            *a = MAX_RATING;
          }
        }
      } else {
        rating_incr (user_get_object_rating (u, local_id, num), change->cnt, change->timestamp);
      }
    }
    return;
  }

  if (type >= 256) {
    type -= 256;
    int new_type = change->cnt;

    assert (0 < type && type < 256);
    assert (0 < new_type && new_type < 256);

    local_id = user_get_object_local_id (u, type, change->x);

    if (verbosity > 1) {
      fprintf (stderr, "Changing type of object with type %d, object_id = %d, local_id = %d to type %d\n", type, change->x, local_id, new_type);
    }

    if (user_has_local_object (u, local_id)) {
      change_list tmp;
      tmp.next = ((void*)0);



      tmp.s = ((void*)0);

      tmp.x = change->x;
      tmp.type = new_type;
      tmp.timestamp = change->timestamp;
      tmp.number = change->number;

      user_do_change (u, &tmp);


      int new_local_id = user_get_object_local_id (u, new_type, change->x);
      if (new_local_id == 0) {
        return;
      }

      int num;
      for (num = 0; num < rating_num; num++) {
        *user_get_object_rating (u, new_local_id, num) = *user_get_object_rating (u, local_id, num);
      }




      tmp.type = -type;

      user_do_change (u, &tmp);
    }

    return;
  }

  int is_del;
  if (type < 0) {
    is_del = 1;
    type = -type;
  } else {
    is_del = 0;
  }






  if (is_del == 1) {
    assert (change->s == ((void*)0));
    local_id = user_has_object (u, type, change->x);

    if (verbosity > 1) {
      fprintf (stderr, "Deleting object of type %d, object_id = %d, local_id = %d\n", type, change->x, local_id);
    }

    if (local_id == 0) {
      return;
    }
    chg_del (&u->object_chg, local_id * 2 + 1);

  } else {



    assert (change->s == ((void*)0));


    local_id = user_get_object_local_id (u, type, change->x);
    if (verbosity > 1) {
      fprintf (stderr, "Adding object of type %d, object_id = %d, local_id = %d\n", type, change->x, local_id);
    }

    if (user_has_local_object (u, local_id)) {
      return;

    } else {
      if (local_id == 0) {
        if (u->object_old_n + u->object_table.currId + 1 < MAX_CNT - (max_cnt_type[type] < MAX_CNT) * MAX_CNT / 10) {
          local_id = ltbl_add (&u->object_table, TYPE_ID(type, change->x)) + u->object_old_n;

          user_upd_object_size (u);

          if (fading) {
            int num;

            for (num = 0; num < rating_num; num++) {
              rating_incr (user_get_object_rating (u, local_id, num), 1, change->timestamp);
            }
          }

          if (type == 10) {
            friend_changes++;
          }
        } else {
          return;
        }

        if (verbosity > 1) {
          fprintf (stderr, "Adding object of type %d, object_id = %d, local_id = %d\n", type, change->x, local_id);
        }
      }
    }




    user_upd_object_size (u);
  }
}
