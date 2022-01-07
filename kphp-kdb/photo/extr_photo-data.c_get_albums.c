
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int local_id; } ;
typedef TYPE_1__ user ;
typedef int predicate ;


 size_t ALBUM_TYPE ;
 int MAX_RESULT ;
 int NOAIO ;
 int assert (int) ;
 TYPE_1__* conv_uid_get (int) ;
 int dbg (char*,int,char*,int,int) ;
 int debug (char*,...) ;
 char* debug_buff ;
 scalar_t__ debug_error ;
 int debug_init () ;
 int event_get_album_id (int *) ;
 int event_to_array (int *,size_t,int ,int) ;
 int get_fields (int *,char*) ;
 int index_mode ;
 int load_user_metafile (TYPE_1__*,int ,int ) ;
 int * predicate_init (char*,size_t) ;
 int * result_obj ;
 int return_fields ;
 int * types ;
 int user_get_albums (TYPE_1__*,int,int,int *) ;
 int user_get_albums_count (TYPE_1__*) ;
 int user_get_albums_count_pred (TYPE_1__*,int *) ;
 int user_get_photos_count (TYPE_1__*,int) ;
 int user_loaded (TYPE_1__*) ;
 int write_only ;

int get_albums (int uid, int offset, int limit, char *fields, const int reverse, const int count, char *condition, char **result) {
  dbg ("get_albums (uid = %d) (fields = %s) (offset = %d) (limit = %d)\n", uid, fields, offset, limit);
  assert (!index_mode && !write_only);

  *result = debug_buff;
  debug_init();

  user *u = conv_uid_get (uid);
  int fields_n = get_fields (&types[ALBUM_TYPE], fields);

  if (u == ((void*)0) || fields_n < 0) {
    return 0;
  }

  if (offset < 0) {
    offset = 0;
  }

  if (offset > MAX_RESULT) {
    offset = MAX_RESULT;
  }

  if (limit <= 0) {
    limit = 0;
  }

  if (limit > MAX_RESULT) {
    limit = MAX_RESULT;
  }

  load_user_metafile (u, u->local_id, NOAIO);
  if (!user_loaded (u)) {
    return -2;
  }

  predicate *pred = predicate_init (condition, ALBUM_TYPE);

  int i, ii, total, real_total;
  if (reverse) {
    total = user_get_albums_count_pred (u, pred);
    real_total = total;
    assert (total >= 0);

    offset = total - offset - limit;
    if (offset < 0) {
      limit += offset;
      offset = 0;
    }
    if (limit < 0) {
      limit = 0;
    }
  } else {
    if (count && pred != ((void*)0)) {
      total = user_get_albums_count_pred (u, pred);
      real_total = total;
      assert (total >= 0);

      total -= offset;

      if (total < 0) {
        total = 0;
      }
    } else {
      total = user_get_albums (u, offset, limit, pred);
      real_total = user_get_albums_count (u);
      assert (total >= 0);
    }
  }

  if (total > limit) {
    total = limit;
  }

  debug ("a:%d:{", total + count);
  if (count) {
    debug ("s:5:\"count\";i:%d;", real_total);
  }
  for (ii = 0; ii < total; ii++) {
    if (reverse) {
      i = total - ii - 1 + offset;
    } else {
      if (count && pred != ((void*)0)) {
        i = ii + offset;
      } else {
        i = ii;
      }
    }

    int aid = event_get_album_id (&result_obj[i]);

    if (fields_n == 0) {
      debug ("i:%d;i:%d;", aid, count ? user_get_photos_count (u, aid) : aid);
    } else {
      debug ("i:%d;%s", aid, event_to_array (&result_obj[i], ALBUM_TYPE, return_fields, fields_n));
    }
  }
  debug ("}");

  if (debug_error) {
    return 0;
  }

  return 1;
}
