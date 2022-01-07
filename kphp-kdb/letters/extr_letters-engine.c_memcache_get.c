
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int INIT ;
 int MAX_PRIORITY ;
 int RETURN (int ,int ) ;
 scalar_t__ STATS_BUFF_SIZE ;
 char* dl_pstr (char*,int ) ;
 int eat_at (char const*,int,char**,int*) ;
 int fprintf (int ,char*,char const*,int) ;
 int get ;
 char* get_letters (int,int,int,int) ;
 int letters_clear (int) ;
 int letters_prepare_stats () ;
 int prepare_stats (struct connection*,char*,scalar_t__) ;
 int return_one_key (struct connection*,char const*,char*,int) ;
 int return_one_key_flags (struct connection*,char const*,char*,int,int) ;
 int sscanf (char*,char*,int*,...) ;
 char* stats_buff ;
 int stderr ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int verbosity ;

int memcache_get (struct connection *c, const char *old_key, int old_key_len) {
  INIT;

  if (verbosity > 1) {
    fprintf (stderr, "memcache_get: key='%s', key_len=%d\n", old_key, old_key_len);
  }

  char *key;
  int key_len;

  eat_at (old_key, old_key_len, &key, &key_len);

  if (key_len >= 5 && !strncmp (key, "stats", 5)) {
    int len = letters_prepare_stats();
    int len2 = prepare_stats (c, stats_buff + len, STATS_BUFF_SIZE - len);
    return_one_key (c, old_key, stats_buff, len + len2 - 1);

    return 0;
  }

  if (key_len >= 7 && !strncmp (key, "letters", 7)) {
    int min_priority, max_priority, cnt, immediate_delete = 0, add = 7;
    if (!strncmp (key + add, "_immediate", 10)) {
      add += 10;
      immediate_delete = 1;
    }

    if (sscanf (key + add, "%*d,%d,%d#%d", &min_priority, &max_priority, &cnt) != 3 || min_priority <= 0 || max_priority >= MAX_PRIORITY || min_priority > max_priority) {
      RETURN(get, 0);
    }

    char *res = get_letters (min_priority, max_priority, cnt, immediate_delete);

    return_one_key_flags (c, old_key, res, strlen (res), 1);

    RETURN(get, 0);
  }

  if (key_len >= 11 && !strncmp (key, "clear_queue", 11)) {
    int priority;
    if (sscanf (key + 11, "%d", &priority) < 1 || priority < 0 || priority >= MAX_PRIORITY) {
      RETURN(get, 0);
    }

    char *ret = dl_pstr ("%lld", letters_clear (priority));
    return_one_key (c, old_key, ret, strlen (ret));

    RETURN(get, 0);
  }

  RETURN(get, 0);
}
