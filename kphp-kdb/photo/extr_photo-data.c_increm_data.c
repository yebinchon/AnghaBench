
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int user ;
struct TYPE_5__ {int field_i; TYPE_1__* fields; } ;
typedef TYPE_2__ type_desc ;
struct lev_photo_increm_data {int type; int cnt; int data_id; } ;
struct lev_generic {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ is_const; } ;


 size_t ALBUM_TYPE ;


 size_t PHOTO_TYPE ;
 int assert (int) ;
 int mode ;
 scalar_t__ t_int ;
 TYPE_2__* types ;
 int user_add_change (int *,struct lev_generic*,int) ;
 int user_increm_album_field (int *,int ,int,int ) ;
 int user_increm_photo_field (int *,int ,int,int ) ;
 int user_loaded (int *) ;
 scalar_t__ write_only ;

int increm_data (user *u, struct lev_photo_increm_data *E, int size) {
  if (u == ((void*)0)) {
    return 0;
  }

  if (write_only) {
    return 1;
  }

  int field_id = E->type & 255;

  type_desc *t_desc;
  switch (E->type - (mode << 16) - field_id) {
    case 128:
      t_desc = &types[PHOTO_TYPE];
      break;
    case 129:
      t_desc = &types[ALBUM_TYPE];
      break;
    default:
      assert (0);
      return 0;
  }

  assert (field_id < t_desc->field_i);
  if (t_desc->fields[field_id].is_const) {
    return 0;
  }
  if (t_desc->fields[field_id].type != t_int) {
    return 0;
  }

  if (!user_loaded (u)) {
    user_add_change (u, (struct lev_generic *)E, size);
    return 1;
  }

  switch (E->type - (mode << 16) - field_id) {
    case 128:
      return user_increm_photo_field (u, E->data_id, field_id, E->cnt);
    case 129:
      return user_increm_album_field (u, E->data_id, field_id, E->cnt);
    default:
      assert (0);
  }
}
