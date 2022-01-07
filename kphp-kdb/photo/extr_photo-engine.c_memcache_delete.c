
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int INIT ;
 int RETURN (int ,int ) ;
 int delete ;
 scalar_t__ do_delete_album (int,int) ;
 scalar_t__ do_delete_photo (int,int) ;
 int eat_at (char const*,int,char**,int*) ;
 int hst (char*,char const*) ;
 size_t mode ;
 char** mode_names ;
 int sscanf (char*,char*,int*,int*,int*) ;
 int strncmp (char*,char*,int) ;
 int write_out (int *,char*,int) ;

int memcache_delete (struct connection *c, const char *old_key, int old_key_len) {
  INIT;

  hst ("memcache_delete: key='%s'\n", old_key);

  char *key;
  int key_len;

  eat_at (old_key, old_key_len, &key, &key_len);

  if (key_len >= 5 && !strncmp (key, mode_names[mode], 5)) {
    int user_id, photo_id, cur;
    if (sscanf (key + 5, "%d,%d%n", &user_id, &photo_id, &cur) == 2 && !key[cur + 5]) {
      if (do_delete_photo (user_id, photo_id)) {
        write_out (&c->Out, "DELETED\r\n", 9);
      } else {
        write_out (&c->Out, "NOT_FOUND\r\n", 11);
      }
    } else {
      write_out (&c->Out, "NOT_FOUND\r\n", 11);
    }

    RETURN(delete, 0);
  }

  if (key_len >= 5 && !strncmp (key, "album", 5)) {
    int user_id, album_id, cur;
    if (sscanf (key + 5, "%d,%d%n", &user_id, &album_id, &cur) == 2 && !key[cur + 5]) {
      if (do_delete_album (user_id, album_id)) {
        write_out (&c->Out, "DELETED\r\n", 9);
      } else {
        write_out (&c->Out, "NOT_FOUND\r\n", 11);
      }
    } else {
      write_out (&c->Out, "NOT_FOUND\r\n", 11);
    }

    RETURN(delete, 0);
  }

  write_out (&c->Out, "NOT_FOUND\r\n", 11);
  RETURN(delete, 0);
}
