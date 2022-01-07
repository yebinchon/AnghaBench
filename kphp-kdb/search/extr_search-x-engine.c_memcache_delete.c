
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int delete_queries ;
 int do_delete_item (int) ;
 int fprintf (int ,char*,...) ;
 int sscanf (char const*,char*,int*,...) ;
 int stderr ;
 scalar_t__ verbosity ;
 int vkprintf (int,char*,long long,...) ;
 int write_out (int *,char*,int) ;

int memcache_delete (struct connection *c, const char *key, int key_len) {
  int owner_id, item_id;

  if (verbosity > 0) {
    fprintf (stderr, "delete \"%s\"\n", key);
  }

  int res = 0;

  switch (*key) {
  case 'i':
    if (sscanf (key, "item%d_%d ", &owner_id, &item_id) == 2 && owner_id && item_id > 0) {
      delete_queries++;
      if (verbosity >= 1) {
       fprintf (stderr, "delete_item (%d,%d)\n", owner_id, item_id);
      }

      vkprintf (3, "delete: item_id=%lld\n", ((long long) item_id << 32) + (unsigned) owner_id);

      res = do_delete_item (((long long) item_id << 32) + (unsigned) owner_id);
    } else if (sscanf (key, "item%d ", &item_id) == 1 && item_id > 0) {
      delete_queries++;
      vkprintf (1, "delete_item (%d,%d)\n", 0, item_id);
      vkprintf (3, "delete: item_id=%lld\n", (long long)item_id);

      res = do_delete_item (item_id);
    }
    break;
  }
  if (res > 0) {
    write_out (&c->Out, "DELETED\r\n", 9);
  } else {
    write_out (&c->Out, "NOT_FOUND\r\n", 11);
  }

  return 0;
}
