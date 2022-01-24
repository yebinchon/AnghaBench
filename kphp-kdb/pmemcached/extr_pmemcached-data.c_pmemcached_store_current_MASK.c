#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int data_len; char* data; char* key; int key_len; int flags; int exp_time; int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_2__ hash_entry_t ;
struct TYPE_9__ {int data_len; } ;
struct TYPE_11__ {char const* key; int key_len; TYPE_2__* hash_entry; TYPE_1__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 TYPE_5__* current_cache ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int entry_memory ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int) ; 
 int pmct_add ; 
 int pmct_replace ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 char* FUNC11 (int) ; 

int FUNC12 (int op_type, const char *data, int data_len, int flags, int delay) {  
  if (verbosity >= 4) {
    FUNC5 (stderr, "data_len=%d\n", current_cache->data.data_len);    
  }  
  if (op_type == pmct_add && current_cache->data.data_len != -1) {
    return 0;
  }
  if (op_type == pmct_replace && current_cache->data.data_len == -1) {
    return 0;
  }
  
  FUNC9 (current_cache->key, current_cache->key_len);

  hash_entry_t *entry = current_cache->hash_entry;

  if (entry) {
    if (entry->data_len >= 0) {
      FUNC10 (entry->data, entry->data_len + 1);
      entry_memory -= entry->data_len + 1;
      FUNC4(entry);
    }
  } else {

    entry = FUNC6 ();

    char *k;
    k = FUNC11 (current_cache->key_len + 1);
    FUNC8 (k, current_cache->key, current_cache->key_len);
    k[current_cache->key_len] = 0;
    entry_memory += current_cache->key_len + 1;

    entry->key = k;
    entry->key_len = current_cache->key_len;

    FUNC0 (entry);
  }

  char *buf = 0; 
  if (data_len >= 0) {
    FUNC2 (buf = FUNC11 (data_len + 1));
    FUNC8(buf, data, data_len);
    buf[data_len] = 0;
    entry_memory += data_len + 1;
  }

  entry->data = buf;
  entry->data_len = data_len;
  entry->flags = flags;
  entry->exp_time = delay;
  entry->timestamp = FUNC7();

  FUNC1 (entry);
  FUNC3 (current_cache);

  return 1;
}