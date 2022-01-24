#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {long long accum_value; int data_len; } ;
struct TYPE_8__ {int data_len; } ;
struct TYPE_9__ {char const* key; int key_len; TYPE_1__ data; scalar_t__ index_entry; TYPE_4__* hash_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  cache_miss ; 
 int /*<<< orphan*/  cache_ok ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* current_cache ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 scalar_t__ disable_cache ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* FUNC6 (char const*,int) ; 
 TYPE_2__* FUNC7 (char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (long long) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC9 (const char *key, int key_len, int forceload) {
  if (verbosity >= 4) {
    FUNC5 (stderr, "loading cache item... ");
  }
  //current_cache = get_cache_item (key, key_len);
  current_cache = disable_cache ? FUNC7 (key, key_len) : FUNC6 (key, key_len);
  if (verbosity >= 4) {
    FUNC5 (stderr, "current_cache->data.data_len = %d\n", current_cache->data.data_len);
    FUNC5 (stderr, "forceload = %d\n", forceload);
    FUNC5 (stderr, "current_cache->key = "); FUNC3 (current_cache->key, current_cache->key_len);
    FUNC5 (stderr, "key = "); FUNC3 (key, key_len);
    FUNC5 (stderr, "key_len = %d, current_cache->key_len = %d\n", key_len, current_cache->key_len);
  }
  FUNC0 (key_len >= 0);
  if (!forceload || current_cache->data.data_len != -2) {
    cache_ok++;
    if (verbosity >= 4) {
      FUNC5 (stderr, "already in cache\n");
    }
    FUNC2 (current_cache);  
    return current_cache->data.data_len == -1 ? 0 : 1;
  } else { 
    cache_miss++;
    if (verbosity >= 4) {
      FUNC5 (stderr, "not in cache. Adding...");
    }

    FUNC2 (current_cache);

    if (!current_cache->hash_entry || current_cache->data.data_len == -2) {
      if (forceload) {
        if (verbosity >= 4) {
          FUNC5 (stderr, "Copying data from index...");
        }
        if (FUNC1 (current_cache) == -2) {
          if (verbosity >= 4) {
            FUNC5 (stderr, "Data is not loaded. Using aio.\n");
          }
          return -2;
        }
        if (current_cache->hash_entry && current_cache->hash_entry->accum_value) {
          FUNC0 (current_cache->hash_entry->data_len == -2);
          if (verbosity >= 4) {
            FUNC5 (stderr, "Adding accumulated data...");
          }
          long long arg = current_cache->hash_entry->accum_value;
          FUNC4 (current_cache->hash_entry);
          current_cache->hash_entry = 0;
          if (current_cache->index_entry) {
            FUNC8 (arg);
          }
        }
      } else {
        if (verbosity >= 4) {
          FUNC5 (stderr, "Skipping loading data from index, because forceload set to 0...");
        }
      }
      if (verbosity >= 4) {
        FUNC5 (stderr, "Added successfully.\n");
      }
    }                                                                               
    return current_cache->data.data_len == -1 ? 0 : 1;
  }
}