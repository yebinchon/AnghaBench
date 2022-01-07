
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int ADD_OPER (int) ;
 int cmd_delete ;
 int del_entry (int) ;
 int fprintf (int ,char*,char const*) ;
 int get_entry (char const*,int,long long) ;
 long long get_hash (char const*,int) ;
 int stderr ;
 scalar_t__ verbosity ;
 int write_out (int *,char*,int) ;

int memcache_delete (struct connection *c, const char *key, int key_len) {
  if (verbosity > 0) {
    fprintf (stderr, "memcache_delete: key='%s'\n", key);
  }
  cmd_delete++;

  long long key_hash = get_hash (key, key_len);
  int x = get_entry (key, key_len, key_hash);

  ADD_OPER (3);

  if (x != -1) {
    del_entry (x);
    write_out (&c->Out, "DELETED\r\n", 9);
    return 0;
  }

  write_out (&c->Out, "NOT_FOUND\r\n", 11);
  return 0;
}
