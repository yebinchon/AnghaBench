
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int delete_counter (int,int ) ;
 int get_at_prefix_length (char const*,int) ;
 int not_found (struct connection*) ;
 int sscanf (char const*,char*,int*) ;
 int write_out (int *,char*,int) ;

int memcache_delete (struct connection *c, const char *key, int key_len) {
  const int dog_len = get_at_prefix_length (key, key_len);
  key += dog_len;
  key_len -= dog_len;
  int counter_id;
  if (sscanf (key, "counter%d", &counter_id) >= 1) {
    delete_counter (counter_id, 0);
    write_out (&c->Out, "DELETED\r\n", 9);
    return 0;
  }
  return not_found (c);
}
