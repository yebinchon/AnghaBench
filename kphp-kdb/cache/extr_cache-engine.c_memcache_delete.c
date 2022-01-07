
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int CACHE_FEATURE_LONG_QUERIES ;
 scalar_t__ binlog_disabled ;
 int cache_do_delete_remote_disk (int,int,int) ;
 int cache_features_mask ;
 int cache_id ;
 int delete_queries ;
 int delete_remote_disk_queries ;
 int delete_remote_server_queries ;
 int memcmp (char const*,char*,int) ;
 int not_found (struct connection*) ;
 int sscanf (char const*,char*,int*,int*,int*,...) ;
 int vkprintf (int,char*,int,int,int) ;
 int write_out (int *,char*,int) ;

int memcache_delete (struct connection *c, const char *key, int key_len) {
  int id, node_id, server_id;
  delete_queries++;
  if (binlog_disabled) {
    return not_found (c);
  }
  if ((cache_features_mask & CACHE_FEATURE_LONG_QUERIES) && key_len >= 13 && !memcmp (key, "remote_server", 13) && sscanf (key + 13, "%d,%d,%d", &id, &node_id, &server_id) == 3 && cache_id == id) {
    delete_remote_server_queries++;
    int r = cache_do_delete_remote_disk (node_id, server_id, 0);
    if (r > 0) {
      write_out (&c->Out, "DELETED\r\n", 9);
      return 0;
    }
    vkprintf (2, "cache_do_delete_remote_disk (node_id:%d, server_id:%d) retuned %d.\n", node_id, server_id, r);
  }
  int disk_id;
  if ((cache_features_mask & CACHE_FEATURE_LONG_QUERIES) && key_len >= 11 && !memcmp (key, "remote_disk", 11) && sscanf (key + 11, "%d,%d,%d,%d", &id, &node_id, &server_id, &disk_id) == 4 && cache_id == id) {
    delete_remote_disk_queries++;
    int r = cache_do_delete_remote_disk (node_id, server_id, disk_id);
    if (r > 0) {
      write_out (&c->Out, "DELETED\r\n", 9);
      return 0;
    }
  }

  return not_found (c);
}
