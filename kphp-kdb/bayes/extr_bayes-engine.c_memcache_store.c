
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int In; } ;


 int BYS_MSG (struct connection*) ;
 int INIT ;
 int MAX_VALUE_LEN ;
 int RETURN (int ,int) ;
 char* buf ;
 int do_black_list_add (char*) ;
 int do_black_list_delete (char*) ;
 int eat_at (char const*,int,char**,int*) ;
 int fprintf (int ,char*,...) ;
 char* msg_get_buf (int ) ;
 scalar_t__ msg_reinit (int ,int,int) ;
 int safe_read_in (int *,char*,int) ;
 int set ;
 int sscanf (char*,char*,int*) ;
 int stderr ;
 int strncmp (char*,char*,int) ;
 int verbosity ;

int memcache_store (struct connection *c, int op, const char *old_key, int old_key_len, int flags, int delay, int size) {
  INIT;

  if (verbosity > 1) {
    fprintf (stderr, "memcache_store: key='%s', key_len=%d, value_len=%d, \n", old_key, old_key_len, size);
  }

  if (size + 1 < MAX_VALUE_LEN) {
    char *key;
    int key_len;

    eat_at (old_key, old_key_len, &key, &key_len);


    if (key_len >= 12 && !strncmp (key, "current_text", 12)) {
      int random_tag;
      if (sscanf (key, "current_text%d", &random_tag) != 1) {
        RETURN(set, -2);
      }

      if (verbosity > 1) {
        fprintf (stderr, "current_text %d\n", random_tag);
      }

      if (msg_reinit (BYS_MSG (c), size, random_tag) < 0) {
        RETURN(set, -2);
      }
      safe_read_in (&c->In, msg_get_buf (BYS_MSG (c)), size);

      RETURN(set, 1);
    }

    if (key_len >= 14 && !strncmp (key, "add_black_list", 14)) {
      safe_read_in (&c->In, buf, size);
      buf[size] = 0;

      if (verbosity > 1) {
        fprintf (stderr, "add_black_list %s\n", buf);
      }

      int result = do_black_list_add (buf);
      RETURN(set, result);
    }

    if (key_len >= 17 && !strncmp (key, "delete_black_list", 17)) {
      safe_read_in (&c->In, buf, size);
      buf[size] = 0;

      if (verbosity > 1) {
        fprintf (stderr, "delete_black_list %s\n", buf);
      }

      int result = do_black_list_delete (buf);
      RETURN(set, result);
    }
  }

  RETURN(set, -2);
}
