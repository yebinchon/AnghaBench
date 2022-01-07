
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PACK_BOOKMARK (long long,int,int,int) ;
 int check_obj (int,int,int) ;
 int fprintf (int ,char*,int,int,int) ;
 int insert_bookmark (int,long long,int,int) ;
 int stderr ;
 int verbosity ;

int add_del_bookmark (int user_id, int type, int owner, int place, int y) {
  if (verbosity > 2) {
    fprintf (stderr, "add_del_bookmark: %d - %d - %d\n", type, owner, place);
  }
  if (!check_obj (type, owner, place) || user_id <= 0) {
    return 0;
  }
  long long t;
  PACK_BOOKMARK (t, type, owner, place);
  insert_bookmark (user_id, t, y, 1);
  return 1;
}
