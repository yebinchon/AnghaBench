
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int INIT ;
 int RETURN (int ,int ) ;
 int delete ;
 scalar_t__ delete_letter (long long) ;
 scalar_t__ delete_letters_by_task_id (long long) ;
 int eat_at (char const*,int,char**,int*) ;
 int fprintf (int ,char*,char const*) ;
 int sscanf (char*,char*,long long*) ;
 int stderr ;
 int strncmp (char*,char*,int) ;
 int verbosity ;
 int write_out (int *,char*,int) ;

int memcache_delete (struct connection *c, const char *old_key, int old_key_len) {
  INIT;

  if (verbosity > 1) {
    fprintf (stderr, "memcache_delete: key='%s'\n", old_key);
  }

  char *key;
  int key_len;

  eat_at (old_key, old_key_len, &key, &key_len);

  if (key_len >= 18 && !strncmp (key, "letters_by_task_id", 18)) {
    long long task_id;

    if (sscanf (key + 18, "%lld", &task_id) == 1 && delete_letters_by_task_id (task_id)) {
      write_out (&c->Out, "DELETED\r\n", 9);
    } else {
      write_out (&c->Out, "NOT_FOUND\r\n", 11);
    }

    RETURN(delete, 0);
  }

  if (key_len >= 6 && !strncmp (key, "letter", 6)) {
    long long id;

    if (sscanf (key + 6, "%lld", &id) == 1 && delete_letter (id)) {
      write_out (&c->Out, "DELETED\r\n", 9);
    } else {
      write_out (&c->Out, "NOT_FOUND\r\n", 11);
    }

    RETURN(delete, 0);
  }

  write_out (&c->Out, "NOT_FOUND\r\n", 11);
  RETURN(delete, 0);
}
