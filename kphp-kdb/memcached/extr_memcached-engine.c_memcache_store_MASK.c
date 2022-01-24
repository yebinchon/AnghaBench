#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct connection {int /*<<< orphan*/  In; } ;
struct TYPE_3__ {int data_len; char* key; int key_len; long long key_hash; int flags; int exp_time; scalar_t__* data; } ;
typedef  TYPE_1__ hash_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int MAX_VALUE_LEN ; 
 int SEC_IN_MONTH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  cmd_set ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (char const*,int,long long) ; 
 TYPE_1__* FUNC9 (int) ; 
 long long FUNC10 (char const*,int) ; 
 int FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int mct_add ; 
 int mct_replace ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int) ; 
 scalar_t__ now ; 
 int FUNC14 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int* stats_now ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  total_items ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,int) ; 
 void* FUNC16 (int) ; 

int FUNC17 (struct connection *c, int op, const char *key, int key_len, int flags, int delay, int size) {
  cmd_set++;

  if (delay == 0) {
    delay = SEC_IN_MONTH;
  } else if (delay > SEC_IN_MONTH) {
    delay -= now;
    if (delay > SEC_IN_MONTH) {
      delay = SEC_IN_MONTH;
    }
  }

  if (delay < 0) {
    return -2;
  }

  delay += FUNC12 (CLOCK_MONOTONIC);

  if (verbosity > 0) {
    FUNC7 (stderr, "memcache_store: key='%s', key_len=%d, value_len=%d, flags = %d, exp_time = %d\n", key, key_len, size, flags, delay);
  }

  if (size < MAX_VALUE_LEN) {
    long long key_hash = FUNC10 (key, key_len);
    int x = FUNC8 (key, key_len, key_hash);

    FUNC0 (0);
#ifdef HISTORY
    stats_now[4] += size;
#endif

    hash_entry_t *entry;

    if (x != -1) {
      if (op == mct_add) {
        return -2;
      }

      if (verbosity > 0) {
        FUNC7 (stderr, "found old entry x = %d\n", x);
      }
      entry = FUNC9 (x);

      FUNC15 (entry->data, entry->data_len + 1);

      FUNC6 (x);
      FUNC5 (x);
    } else {
      if (op == mct_replace) {
        return -2;
      }

      total_items++;

      x = FUNC11 ();

      if (verbosity > 0) {
        FUNC7 (stderr, "created new entry x = %d\n", x);
      }

      entry = FUNC9 (x);

      char *k;
      k = FUNC16 (key_len + 1);
      FUNC13 (k, key, key_len);
      k[key_len] = 0;

      entry->key = k;
      entry->key_len = key_len;
      entry->key_hash = key_hash;

      FUNC1 (x);
    }

    entry->data = FUNC16 (size + 1);
    FUNC4 (FUNC14 (&c->In, entry->data, size) == size);
    entry->data[size] = 0;

    entry->data_len = size;
    entry->flags = flags;
    entry->exp_time = delay;

    FUNC3 (x);
    FUNC2 (x);

    return 1;
  }

  return -2;
}