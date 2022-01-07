
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int local_id; } ;
typedef TYPE_1__ user ;
struct tl_get_album {int mask; int force; int album_id; int user_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;
typedef int actual_object ;


 int ALBUM_TYPE ;
 int NOAIO ;
 int TL_MAYBE_FALSE ;
 int TL_MAYBE_TRUE ;
 int assert (int) ;
 scalar_t__ check_album_id (int ) ;
 scalar_t__ check_user_id (int ) ;
 TYPE_1__* conv_uid_get (int ) ;
 int event_to_rpc (int *,int ,int ) ;
 int index_mode ;
 int load_user_metafile (TYPE_1__*,int ,int ) ;
 int tl_store_int (int ) ;
 scalar_t__ user_get_album (TYPE_1__*,int ,int ,int *) ;
 int user_loaded (TYPE_1__*) ;
 int write_only ;

int tl_do_get_album (struct tl_act_extra *extra) {
  struct tl_get_album *e = (struct tl_get_album *)extra->extra;

  assert (check_user_id (e->user_id) && check_album_id (e->album_id));
  assert (!index_mode && !write_only);

  user *u = conv_uid_get (e->user_id);
  if (u == ((void*)0)) {
    tl_store_int (TL_MAYBE_FALSE);
    return 0;
  }

  load_user_metafile (u, u->local_id, NOAIO);
  if (!user_loaded (u)) {
    return -2;
  }

  actual_object o;
  if (user_get_album (u, e->album_id, e->force, &o) < 0) {
    tl_store_int (TL_MAYBE_FALSE);
    return 0;
  }

  tl_store_int (TL_MAYBE_TRUE);
  event_to_rpc (&o, ALBUM_TYPE, e->mask);
  return 0;
}
