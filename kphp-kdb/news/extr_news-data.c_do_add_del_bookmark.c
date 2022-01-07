
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PACK_BOOKMARK (long long,int,int,int) ;
 int UNPACK_BOOKMARK (long long,int,int,int) ;
 int add_del_bookmark (int,int,int,int,int) ;
 int assert (int) ;
 int check_obj (int,int,int) ;
 int insert_bookmark (int,long long,int,int ) ;
 int insert_bookmark_log (int,int,int,int,int) ;

int do_add_del_bookmark (int user_id, int type, int owner, int place, int y) {

  if (!check_obj (type, owner, place) || user_id <= 0) {
    return 0;
  }
  long long t;
  PACK_BOOKMARK (t, type, owner, place);
  int x, yy, z;
  UNPACK_BOOKMARK (t, x, yy, z);

  assert (x == type && yy == owner && z == place);
  if (!insert_bookmark (user_id, t, y, 0)) {
    insert_bookmark_log (user_id, type, owner, place, y);
    return add_del_bookmark (user_id, type, owner, place, y);
  }
  return 1;
}
