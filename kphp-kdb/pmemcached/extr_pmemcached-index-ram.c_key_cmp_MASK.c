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
struct index_entry {int /*<<< orphan*/  key_len; int /*<<< orphan*/  data; int /*<<< orphan*/  key; } ;
struct hash_entry {int /*<<< orphan*/  key_len; int /*<<< orphan*/  data; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct index_entry*) ; 
 int hash_count ; 
 struct index_entry* FUNC1 (int) ; 
 int index_size ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct index_entry** p ; 

int FUNC3 (int a, int b) {
  if (a == hash_count) return 1;
  if (b == index_size) return -1;
  //if (hash_array[a] < index_hash[b]) return -1;
  //if (hash_array[a] > index_hash[b]) return 1;
  //printf ("p = %p, a = %d, b = %d\n", p, a, b);
  struct hash_entry *e1 = p[a];
  FUNC0 (e1);
  struct index_entry *e2 = FUNC1 (b);
  FUNC0 (e2);
  //fprintf (stderr, ".");
  return FUNC2 (e1->key, e1->key_len, e2->data, e2->key_len);
}