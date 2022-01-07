
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int id; } ;
typedef TYPE_1__ user ;
struct TYPE_9__ {scalar_t__ v_fid; } ;
typedef TYPE_2__ field ;
typedef int data ;


 scalar_t__ album_type_id ;
 scalar_t__ album_type_owner_id ;
 int assert (int) ;
 int dbg (char*,int ,int,int) ;
 int user_change_data (int *,int,TYPE_2__*,int,int ) ;
 int * user_get_album_data (TYPE_1__*) ;
 int user_loaded (TYPE_1__*) ;
 scalar_t__ write_only ;

int user_change_album (user *u, int aid, field *field_changes, int field_changes_n) {
  dbg ("user_change_album %d: album_id = %d, field_changes_n = %d\n", u->id, aid, field_changes_n);

  if (write_only) {
    return 1;
  }

  assert (user_loaded (u));

  data *d = user_get_album_data (u);
  assert (d != ((void*)0));

  int i;
  for (i = 0; i < field_changes_n; i++) {

    assert (field_changes[i].v_fid != album_type_id && field_changes[i].v_fid != album_type_owner_id);
  }

  return user_change_data (d, aid, field_changes, field_changes_n, 0) > -1;
}
