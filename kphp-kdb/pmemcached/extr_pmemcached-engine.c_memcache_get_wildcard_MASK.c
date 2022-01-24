#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct data {int data_len; int /*<<< orphan*/  flags; int /*<<< orphan*/  data; } ;
struct connection {int flags; int /*<<< orphan*/  Out; } ;
struct TYPE_2__ {int key_len; char* key; int prefix_len; int total_data_sent; char* ptr; scalar_t__ total_keys_sent; } ;

/* Variables and functions */
 int C_INTIMEOUT ; 
 int /*<<< orphan*/  MAX_WILDCARD_LEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (char const*,int,int,scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* mc_store ; 
 int /*<<< orphan*/  FUNC4 (struct connection*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 scalar_t__ metafile_mode ; 
 int FUNC6 (struct connection*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct connection*,char const*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  wildcard_arrays_allocated ; 
 struct connection* wildcard_connection ; 
 int /*<<< orphan*/  wildcard_engine_mc_report ; 
 int /*<<< orphan*/  wildcard_engine_report ; 
 struct data FUNC10 (char const*,int) ; 
 char const* wildcard_last_key ; 
 int wildcard_last_key_len ; 
 int wildcard_prefix_len ; 
 char* wildcard_ptr ; 
 int /*<<< orphan*/  FUNC11 (char const*,int) ; 
 int wildcard_total_data_sent ; 
 scalar_t__ wildcard_total_keys_sent ; 
 char wildcard_type ; 
 int /*<<< orphan*/  FUNC12 (struct connection*,char const*,int,int,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC14 (struct connection *c, const char *key, int key_len) {
  FUNC9 (3, "memcache_get_wildcard. key = %s\n", key);
  wildcard_engine_report = wildcard_engine_mc_report;
  if (c->flags & C_INTIMEOUT) {
    return 0;
  }
  int r = FUNC6 (c, 1);
  FUNC9 (3, "read_last_kept = %d\n", r);
  wildcard_type = key[key_len - 1];
  wildcard_ptr = 0;

  wildcard_last_key = key;;
  wildcard_last_key_len = key_len - 1;
  wildcard_connection = c;
  if (!r) {
    if (wildcard_type == '#') {
      struct data x = FUNC10 (key, key_len - 1);
      if (x.data_len != -1) {
        FUNC7 (c, key, key_len, x.data, x.data_len, x.flags);
        return 0;
      }
    }
    wildcard_total_data_sent = 0;
    wildcard_total_keys_sent = 0;
    if (wildcard_type == '#') {
      if (metafile_mode) {
        wildcard_ptr = FUNC3 (MAX_WILDCARD_LEN);
        FUNC5 (wildcard_ptr, "a:000000000:{", 13);
        wildcard_total_data_sent = 13;
        wildcard_arrays_allocated ++;
      } else {
        static char buff[65536];
        int l = FUNC8 (buff, "VALUE ");
        FUNC5 (buff + l, key, key_len);
        l += key_len;
        l += FUNC8 (buff + l, " 1 ");
        FUNC13 (&c->Out, buff, l);
        wildcard_ptr = FUNC2 (&c->Out, 50);
        FUNC13 (&c->Out, "000000000\r\na:000000000:{", 24);
        wildcard_total_data_sent = 13;
      }
    }
    wildcard_prefix_len = key_len - 1;
  } else {
    FUNC0 (metafile_mode);
    //fprintf (stderr, "kept key_len = %d, key = %.*s, prefix_len = %d\n", mc_store->key_len, mc_store->key_len, mc_store->key, mc_store->prefix_len);
    wildcard_last_key_len = mc_store->key_len;
    wildcard_last_key = mc_store->key;
    wildcard_prefix_len = mc_store->prefix_len;
    wildcard_total_data_sent = mc_store->total_data_sent;
    wildcard_total_keys_sent = mc_store->total_keys_sent;
    wildcard_ptr = mc_store->ptr;
  }


  int v = FUNC1 (wildcard_last_key, wildcard_last_key_len, wildcard_prefix_len, wildcard_total_keys_sent);
  FUNC9 (3, "do_pmemcached_get_all_next_keys result: %d\n", v);
  if (v == -2) {
    FUNC0 (metafile_mode);
    FUNC12 (c, wildcard_last_key, wildcard_last_key_len, wildcard_prefix_len, wildcard_total_data_sent, wildcard_total_keys_sent, wildcard_ptr);
    FUNC4 (c);
    return 0;
  }
  FUNC11 (key, key_len);
  return 0;
/*  int r = read_last_kept (c);
  int prefix_len;
  long long total_data_sent;
  int total_keys_sent;
  char type = key[key_len - 1];
  char *ptr = 0;
  if (!r) {
    key_len --;
    if (do_pmemcached_preload (key, key_len, 1) == -2) {
      memcache_wait (c);
      return 0;
    }

    struct data x = do_pmemcached_get (key, key_len);
    total_data_sent = 0;
    total_keys_sent = 0;
    if (type == '#') {
      ptr = malloc (MAX_WILDCARD_LEN);
      memcpy (ptr, "a:000000000:{", 13);
      total_data_sent = 13;
      wildcard_arrays_allocated ++;
    }
    prefix_len = key_len;
    if (x.data_len >= 0) {
      if (type == '*') {
        total_data_sent += return_one_key_flags_len (c, "", 0, x.data, x.data_len, x.flags);
        total_keys_sent ++;
      } else if (type == '#') {
        if (total_data_sent +  x.data_len + 20 < MAX_WILDCARD_LEN) {
          total_data_sent += sprintf (ptr + total_data_sent, "s:0:\"\";");
          if (!(x.flags & 1)) {
            total_data_sent += sprintf (ptr + total_data_sent, "s:%d:\"", x.data_len);
          }
          memcpy (ptr + total_data_sent, x.data, x.data_len);
          total_data_sent += x.data_len;
          if (!(x.flags & 1)) {
            total_data_sent += sprintf (ptr + total_data_sent, "\";");
          }
          total_keys_sent ++;
        }
      }
    } else {
      assert (x.data_len == -1);
    }

  } else {
    key_len = mc_store->key_len;
    key = mc_store->key;
    prefix_len = mc_store->prefix_len;
    total_data_sent = mc_store->total_data_sent;
    total_keys_sent = mc_store->total_keys_sent;
    ptr = mc_store->ptr;
  }
  while (1) {
    if (total_data_sent > MAX_TOTAL_DATA) {
      return_one_key_flags (c, "__error__", "ML", 2, 0);
      if (ptr) {
        free (ptr);
        wildcard_arrays_allocated --;
      }
      return 0;
    }
    char *next_key;
    int next_key_len;
    r = do_pmemcached_get_next_key (key, key_len, &next_key, &next_key_len);
    if (r == -1) {
      if (ptr) {
        memcpy (ptr + total_data_sent, "}", 1);
        total_data_sent ++;
        static char s[12];
        sprintf (s, "%09d", total_keys_sent);
        memcpy (ptr + 2, s, 9);
        return_one_key_flags (c, key, ptr, total_data_sent, 1);
        free (ptr);
        wildcard_arrays_allocated --;
      }
      return 0;
    }
    if (r == -2) {
      write_last_kept (c, key, key_len, prefix_len, total_data_sent, total_keys_sent, ptr);
      memcache_wait (c);
      return 0;
    }
    assert (next_key);
    assert (next_key_len >= 1);
    if (next_key_len < prefix_len || strncmp (key, next_key, prefix_len)) {
      if (ptr) {
        memcpy (ptr + total_data_sent, "}", 1);
        total_data_sent ++;
        static char s[12];
        sprintf (s, "%09d", total_keys_sent);
        memcpy (ptr + 2, s, 9);
        return_one_key_flags_len (c, key, prefix_len, ptr, total_data_sent, 1);
        free (ptr);
        wildcard_arrays_allocated --;
      }
      return 0;
    }
    //if (do_pmemcached_preload (next_key, next_key_len, 1) == -2) {
    //  write_last_kept (c, key, key_len, prefix_len, total_data_sent, total_keys_sent, ptr);
    //  memcache_wait (c);
    //  return 0;
    //}
    struct data x = do_pmemcached_get (next_key, next_key_len);

    if (x.data_len >= 0) {
      get_hits++;
      if (type == '*') {
        total_data_sent += return_one_key_flags_len (c, next_key + prefix_len, next_key_len - prefix_len, x.data, x.data_len, x.flags);
        total_keys_sent ++;
      } else if (type == '#') {
        if (total_data_sent + next_key_len - prefix_len + x.data_len + 20 < MAX_WILDCARD_LEN) {
          total_data_sent += sprintf (ptr + total_data_sent, "s:%d:\"", next_key_len - prefix_len);
          memcpy (ptr + total_data_sent, next_key + prefix_len, next_key_len - prefix_len);
          total_data_sent += next_key_len - prefix_len;
          total_data_sent += sprintf (ptr + total_data_sent, "\";");
          if (!(x.flags & 1)) {
            total_data_sent += sprintf (ptr + total_data_sent, "s:%d:\"", x.data_len);
          }
          memcpy (ptr + total_data_sent, x.data, x.data_len);
          total_data_sent += x.data_len;
          if (!(x.flags & 1)) {
            total_data_sent += sprintf (ptr + total_data_sent, "\";");
          }
          total_keys_sent ++;
        }
      }
    } else {
      assert (x.data_len == -1);
    }
    key = next_key;
    key_len = next_key_len;
  }*/
  return 0;

}