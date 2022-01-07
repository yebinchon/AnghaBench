
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
typedef int predicate ;
typedef int data ;


 int MAX_RESULT ;
 int assert (int ) ;
 int user_get (int *,int,int,int *) ;
 int * user_get_photo_data (int *,int) ;
 int user_loaded (int *) ;

int user_get_photos (user *u, int aid, int offset, int limit, predicate *pred) {
  assert (user_loaded (u));

  if (offset < 0) {
    offset = 0;
  }

  if (offset > MAX_RESULT) {
    offset = MAX_RESULT;
  }

  if (limit <= 0) {
    return 0;
  }

  if (limit > MAX_RESULT) {
    limit = MAX_RESULT;
  }

  data *d = user_get_photo_data (u, aid);
  if (d == ((void*)0)) {
    return -1;
  }
  return user_get (d, limit, offset, pred);
}
