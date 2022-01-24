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
struct tl_combinator {char* id; } ;
struct hash_elem_tl_fun_id {struct tl_combinator* x; } ;
struct TYPE_3__ {int /*<<< orphan*/  ht_fid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* cur_config ; 
 struct hash_elem_tl_fun_id* FUNC1 (int /*<<< orphan*/ ,struct tl_combinator*) ; 

struct tl_combinator *FUNC2 (const char *s) {
  FUNC0 (cur_config);
  struct tl_combinator c;
  c.id = (char *)s;
  //struct hash_elem_tl_fun_id *h = hash_lookup_tl_fun_id (&tl_fun_id_hash_table, &c);
  struct hash_elem_tl_fun_id *h = FUNC1 (cur_config->ht_fid, &c);
  return h ? h->x : 0;
}