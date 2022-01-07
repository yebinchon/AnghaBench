
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int In; } ;


 int INIT ;
 int MAX_FRIENDS ;
 int MAX_VALUE_LEN ;
 int RETURN (int ,int) ;
 int active_aio_queries ;
 int add_common_friends (int,int,int*,int) ;
 char* buf ;
 int eat_at (char const*,int,char**,int*) ;
 int fprintf (int ,char*,char const*,int,int) ;
 int* fr_buff ;
 int get_int (char const**) ;
 int safe_read_in (int *,char*,int) ;
 int set ;
 int sscanf (char*,char*,int*,int*) ;
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


    if (key_len >= 14 && !strncmp (key, "common_friends", 14)) {
      int uid;
      int add;
      int t = sscanf (key + 14, "%d,%d\n", &uid, &add);


      if (add != -1 && add != -4 && add != 1 && add != 4) {
        active_aio_queries |= (1 << 18);
        RETURN(set, -2);
      }

      if (t != 1 && t != 2) {
        RETURN(set, -2);
      }
      if (t == 1) {
        add = 1;
      }

      safe_read_in (&c->In, buf, size);
      buf[size] = 0;

      const char *s = buf;
      int n = get_int (&s), i;

      if (n >= MAX_FRIENDS - 1) {
        active_aio_queries |= (1 << 15);
        RETURN(set, 0);
      }

      if (n < 0) {
        active_aio_queries |= (1 << 16);
        RETURN(set, 0);
      }

      for (i = 0; i < n; i++)
      {
        if (*s == 0) {
          RETURN(set, 0);
        }
        s++;
        fr_buff[i] = get_int (&s);
        if (fr_buff[i] <= 0 || fr_buff[i] >= (1 << 28)) {
          active_aio_queries |= (1 << 17);
          RETURN(set, 0);
        }
      }

      int res = add_common_friends (uid, add, fr_buff, n);
      RETURN(set, res);
    }
  }

  RETURN(set, -2);
}
