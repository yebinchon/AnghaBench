
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct data {int data_len; int flags; int data; } ;
struct connection {int flags; int Out; } ;
struct TYPE_2__ {int key_len; char* key; int prefix_len; int total_data_sent; char* ptr; scalar_t__ total_keys_sent; } ;


 int C_INTIMEOUT ;
 int MAX_WILDCARD_LEN ;
 int assert (scalar_t__) ;
 int do_pmemcached_get_all_next_keys (char const*,int,int,scalar_t__) ;
 char* get_write_ptr (int *,int) ;
 char* malloc (int ) ;
 TYPE_1__* mc_store ;
 int memcache_wait (struct connection*) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ metafile_mode ;
 int read_last_kept (struct connection*,int) ;
 int return_one_key_flags_len (struct connection*,char const*,int,int ,int,int ) ;
 int sprintf (char*,char*) ;
 int vkprintf (int,char*,...) ;
 int wildcard_arrays_allocated ;
 struct connection* wildcard_connection ;
 int wildcard_engine_mc_report ;
 int wildcard_engine_report ;
 struct data wildcard_get_value (char const*,int) ;
 char const* wildcard_last_key ;
 int wildcard_last_key_len ;
 int wildcard_prefix_len ;
 char* wildcard_ptr ;
 int wildcard_report_finish (char const*,int) ;
 int wildcard_total_data_sent ;
 scalar_t__ wildcard_total_keys_sent ;
 char wildcard_type ;
 int write_last_kept (struct connection*,char const*,int,int,int,scalar_t__,char*) ;
 int write_out (int *,char*,int) ;

int memcache_get_wildcard (struct connection *c, const char *key, int key_len) {
  vkprintf (3, "memcache_get_wildcard. key = %s\n", key);
  wildcard_engine_report = wildcard_engine_mc_report;
  if (c->flags & C_INTIMEOUT) {
    return 0;
  }
  int r = read_last_kept (c, 1);
  vkprintf (3, "read_last_kept = %d\n", r);
  wildcard_type = key[key_len - 1];
  wildcard_ptr = 0;

  wildcard_last_key = key;;
  wildcard_last_key_len = key_len - 1;
  wildcard_connection = c;
  if (!r) {
    if (wildcard_type == '#') {
      struct data x = wildcard_get_value (key, key_len - 1);
      if (x.data_len != -1) {
        return_one_key_flags_len (c, key, key_len, x.data, x.data_len, x.flags);
        return 0;
      }
    }
    wildcard_total_data_sent = 0;
    wildcard_total_keys_sent = 0;
    if (wildcard_type == '#') {
      if (metafile_mode) {
        wildcard_ptr = malloc (MAX_WILDCARD_LEN);
        memcpy (wildcard_ptr, "a:000000000:{", 13);
        wildcard_total_data_sent = 13;
        wildcard_arrays_allocated ++;
      } else {
        static char buff[65536];
        int l = sprintf (buff, "VALUE ");
        memcpy (buff + l, key, key_len);
        l += key_len;
        l += sprintf (buff + l, " 1 ");
        write_out (&c->Out, buff, l);
        wildcard_ptr = get_write_ptr (&c->Out, 50);
        write_out (&c->Out, "000000000\r\na:000000000:{", 24);
        wildcard_total_data_sent = 13;
      }
    }
    wildcard_prefix_len = key_len - 1;
  } else {
    assert (metafile_mode);

    wildcard_last_key_len = mc_store->key_len;
    wildcard_last_key = mc_store->key;
    wildcard_prefix_len = mc_store->prefix_len;
    wildcard_total_data_sent = mc_store->total_data_sent;
    wildcard_total_keys_sent = mc_store->total_keys_sent;
    wildcard_ptr = mc_store->ptr;
  }


  int v = do_pmemcached_get_all_next_keys (wildcard_last_key, wildcard_last_key_len, wildcard_prefix_len, wildcard_total_keys_sent);
  vkprintf (3, "do_pmemcached_get_all_next_keys result: %d\n", v);
  if (v == -2) {
    assert (metafile_mode);
    write_last_kept (c, wildcard_last_key, wildcard_last_key_len, wildcard_prefix_len, wildcard_total_data_sent, wildcard_total_keys_sent, wildcard_ptr);
    memcache_wait (c);
    return 0;
  }
  wildcard_report_finish (key, key_len);
  return 0;
  return 0;

}
