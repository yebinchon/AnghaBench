#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct connection {int /*<<< orphan*/  In; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ binlog_disabled ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,long long) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int cache_id ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  set_delete_local_copy_queries ; 
 int /*<<< orphan*/  set_file_size_queries ; 
 int /*<<< orphan*/  set_new_local_copy_queries ; 
 int /*<<< orphan*/  set_queries ; 
 int /*<<< orphan*/  set_yellow_time_remaining_queries ; 
 int FUNC7 (char const*,char*,...) ; 
 int /*<<< orphan*/ * value_buff ; 

int FUNC8 (struct connection *c, int op, const char *key, int key_len, int flags, int delay, int size) {
  int id;
  char uri[256], local_uri[256];

  if (op != 1 || key_len < 1 || binlog_disabled) {
    return -2;
  }
  set_queries++;

  switch (*key) {
    case 'd':
      if (key_len >= 17 && size < 256 && !FUNC5 (key, "delete_local_copy", 17) && FUNC7 (key + 17, "%d:%255s", &id, uri) == 2 && id == cache_id) {
        FUNC0 (FUNC6 (&c->In, value_buff, size) == size);
        value_buff[size] = 0;
        set_delete_local_copy_queries++;
        return (FUNC1 (uri, value_buff) < 0) ? 0 : 1;
      }
      break;
    case 'f':
      if (key_len >= 9 && size <= 64 && !FUNC5 (key, "file_size", 9) && FUNC7 (key + 9, "%d:%255s", &id, uri) == 2 && id == cache_id) {
        long long s;
        FUNC0 (FUNC6 (&c->In, value_buff, size) == size);
        value_buff[size] = 0;
        if (FUNC7 (value_buff, "%lld", &s) == 1) {
          set_file_size_queries++;
          if (!FUNC3 (uri, s)) {
            return 1;
          }
        }
        return 0;
      }
      break;
    case 'n':
      if (key_len >= 14 && size < 256 && !FUNC5 (key, "new_local_copy", 14) && FUNC7 (key + 14, "%d:%255s", &id, uri) == 2 && id == cache_id) {
        FUNC0 (FUNC6 (&c->In, value_buff, size) == size);
        value_buff[size] = 0;
        set_new_local_copy_queries++;
        return (FUNC2 (uri, value_buff) < 0) ? 0 : 1;
      }
      break;
    case 'y':
      if (key_len >= 21 && size < 256 && !FUNC5 (key, "yellow_time_remaining", 21) && FUNC7 (key + 21, "%d:%255[^~]~%255s", &id, uri, local_uri) == 3 && id == cache_id) {
        FUNC0 (FUNC6 (&c->In, value_buff, size) == size);
        value_buff[size] = 0;
        int duration;
        if (FUNC7 (value_buff, "%d", &duration) == 1) {
          set_yellow_time_remaining_queries++;
          if (!FUNC4 (uri, local_uri, duration)) {
            return 1;
          }
        }
        return 0;
      }
      break;
  }
  return -2;
}