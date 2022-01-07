
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 scalar_t__ delete_temp_transaction (int) ;
 int fprintf (int ,char*,char const*) ;
 int sscanf (char const*,char*,int*) ;
 int stderr ;
 int verbosity ;
 int write_out (int *,char*,int) ;

int memcache_delete (struct connection *c, const char *key, int key_len) {
  int temp_id;
  if (verbosity > 1) {
    fprintf (stderr, "memcache_delete: key='%s'\n", key);
  }

  if (sscanf (key, "transaction%d", &temp_id) >= 1 && temp_id > 0) {
    if (delete_temp_transaction (temp_id) > 0) {
      write_out (&c->Out, "DELETED\r\n", 9);
      return 0;
    } else {
      write_out (&c->Out, "NOT_FOUND\r\n", 11);
      return 0;
    }
  }

  write_out (&c->Out, "NOT_FOUND\r\n", 11);
  return 0;
}
