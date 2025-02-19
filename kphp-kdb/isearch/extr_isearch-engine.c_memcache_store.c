
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int In; } ;


 int INIT ;
 int MAX_VALUE_LEN ;
 int RETURN (int ,int) ;
 char* buf ;
 int do_black_list_add (char*,int) ;
 int do_black_list_delete (char*,int) ;
 int do_isearch_set_stat (int,int,int,char*,int) ;
 int eat_at (char const*,int,char**,int*) ;
 int fprintf (int ,char*,char const*,...) ;
 int safe_read_in (int *,char*,int) ;
 int set ;
 int sscanf (char*,char*,int*,int*,int*) ;
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


    if (key_len >= 4 && !strncmp (key, "stat", 4)) {
      int uid, type, cnt;
      if (sscanf (key, "stat%d,%d#%d", &uid, &type, &cnt) != 3 || cnt == 0) {
        RETURN(set, -2);
      }

      safe_read_in (&c->In, buf, size);
      buf[size] = 0;

      do_isearch_set_stat (uid, type, cnt, buf, size);

      RETURN(set, 1);
    }

    if (key_len >= 14 && !strncmp (key, "add_black_list", 14)) {
      safe_read_in (&c->In, buf, size);
      buf[size] = 0;

      if (verbosity > 1) {
        fprintf (stderr, "add_black_list %s\n", buf);
      }

      int result = do_black_list_add (buf, size);
      RETURN(set, result);
    }

    if (key_len >= 17 && !strncmp (key, "delete_black_list", 17)) {
      safe_read_in (&c->In, buf, size);
      buf[size] = 0;

      if (verbosity > 1) {
        fprintf (stderr, "delete_black_list %s\n", buf);
      }

      int result = do_black_list_delete (buf, size);
      RETURN(set, result);
    }
  }

  RETURN(set, -2);
}
