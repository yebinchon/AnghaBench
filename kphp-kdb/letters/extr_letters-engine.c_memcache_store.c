
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int In; } ;


 int INIT ;
 int MAX_DELAY ;
 int MAX_PRIORITY ;
 int MAX_VALUE_LEN ;
 int RETURN (int ,int) ;
 int add_letter (int,long long,scalar_t__*) ;
 int add_letter_priority (long long,int,int,scalar_t__*) ;
 scalar_t__* buf ;
 int eat_at (char const*,int,char**,int*) ;
 int fprintf (int ,char*,char const*,int,int) ;
 int safe_read_in (int *,scalar_t__*,int) ;
 int set ;
 int sscanf (char*,char*,...) ;
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

    if (key_len >= 15 && !strncmp (key, "letter_priority", 15)) {
      int priority;
      long long id;
      int delay = 0;

      if (sscanf (key + 15, "%lld,%d,%d", &id, &priority, &delay) < 2 || priority <= 0 || priority >= MAX_PRIORITY || delay < 0 || delay > MAX_DELAY) {
        RETURN(set, -2);
      }

      safe_read_in (&c->In, buf, size);
      buf[size] = 0;

      int result = add_letter_priority (id, priority, delay, buf);
      RETURN(set, result);
    }

    if (key_len >= 6 && !strncmp (key, "letter", 6)) {
      int engine_num;
      int delay = 0;
      long long task_id = 0;

      if (sscanf (key + 6, "%d,%d,%lld", &engine_num, &delay, &task_id) < 1 || delay < 0 || delay > MAX_DELAY) {
        RETURN(set, -2);
      }

      safe_read_in (&c->In, buf, size);
      buf[size] = 0;

      int result = add_letter (delay, task_id, buf);
      RETURN(set, result);
    }
  }

  RETURN(set, -2);
}
