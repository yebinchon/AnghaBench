
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int In; } ;


 int INIT ;
 int MAX_VALUE_LEN ;
 int MESSAGE (struct connection*) ;
 int RETURN (int ,int) ;
 int buf ;
 int do_change_album (int,int,int ) ;
 int do_change_photo (int,int,int ) ;
 int eat_at (char const*,int,char**,int*) ;
 int get ;
 int hst (char*,char const*,int,int) ;
 size_t mode ;
 char** mode_names ;
 int msg_get_buf (int ) ;
 scalar_t__ msg_reinit (int ,int,int) ;
 int safe_read_in (int *,int ,int) ;
 int set ;
 int sscanf (char*,char*,int*,int*,...) ;
 int strncmp (char*,char*,int) ;
 scalar_t__ unlikely (int) ;

int memcache_store (struct connection *c, int op, const char *old_key, int old_key_len, int flags, int delay, int size) {
  INIT;

  hst ("memcache_store: key='%s', key_len=%d, value_len=%d\n", old_key, old_key_len, size);

  if (unlikely (size >= MAX_VALUE_LEN)) {
    RETURN (set, -2);
  }

  char *key;
  int key_len;
  eat_at (old_key, old_key_len, &key, &key_len);

  if (key_len >= 12 && !strncmp (key, "change_", 7) && !strncmp (key + 7, mode_names[mode], 5)) {
    int user_id, photo_id, cur;
    safe_read_in (&c->In, buf, size);

    if (sscanf (key + 12, "%d,%d%n", &user_id, &photo_id, &cur) < 2 || key[12 + cur]) {
      RETURN (set, 0);
    }

    int res = do_change_photo (user_id, photo_id, buf);
    RETURN (set, res);
  }

  if (key_len >= 12 && !strncmp (key, "change_album", 12)) {
    int user_id, album_id, cur;
    safe_read_in (&c->In, buf, size);

    if (sscanf (key + 12, "%d,%d%n", &user_id, &album_id, &cur) < 2 || key[12 + cur]) {
      RETURN (set, 0);
    }

    int res = do_change_album (user_id, album_id, buf);
    RETURN (set, res);
  }

  if (key_len >= 22 && !strncmp (key, mode_names[mode], 5) && !strncmp (key + 5, "s_overview_albums", 17)) {
    int random_tag, cur = -1;
    if (sscanf (key + 22, "%*d,%d%n", &random_tag, &cur) != 1 || key[22 + cur]) {
      RETURN (get, -2);
    }

    if (msg_reinit (MESSAGE (c), size, random_tag) < 0) {
      RETURN (get, -2);
    }
    safe_read_in (&c->In, msg_get_buf (MESSAGE (c)), size);

    RETURN (get, 1);
  }

  RETURN (set, -2);
}
