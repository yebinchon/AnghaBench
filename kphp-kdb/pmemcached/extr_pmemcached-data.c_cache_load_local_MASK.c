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
struct index_entry {int dummy; } ;
struct hash_entry {int dummy; } ;
struct TYPE_10__ {long long accum_value; int data_len; } ;
struct TYPE_8__ {int data_len; } ;
struct TYPE_9__ {TYPE_1__ data; scalar_t__ index_entry; TYPE_4__* hash_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct index_entry*) ; 
 int /*<<< orphan*/  cache_ok ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct hash_entry*,struct index_entry*) ; 
 TYPE_2__* current_cache ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ disable_cache ; 
 TYPE_2__* FUNC4 (char const*,int) ; 
 TYPE_2__* FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (long long) ; 

int FUNC7 (const char *key, int key_len, struct hash_entry *hash_entry, struct index_entry *index_entry) {
  current_cache = disable_cache ? FUNC5 (key, key_len) : FUNC4 (key, key_len);
  FUNC2 (current_cache, hash_entry, index_entry); 
  if (current_cache->data.data_len == -2) {
    FUNC1 (current_cache, index_entry);
    if (current_cache->hash_entry && current_cache->hash_entry->accum_value) {
      FUNC0 (current_cache->hash_entry->data_len == -2);
      long long arg = current_cache->hash_entry->accum_value;        
      FUNC3 (current_cache->hash_entry);
      current_cache->hash_entry = 0;
      if (current_cache->index_entry) {
        FUNC6 (arg);
      }
    }
  }
  cache_ok++;
  return current_cache->data.data_len == -1 ? 0 : 1;
}