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
struct tl_type {int name; } ;
struct hash_elem_tl_type_name {struct tl_type* x; } ;
struct TYPE_3__ {int /*<<< orphan*/  ht_tname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* cur_config ; 
 struct hash_elem_tl_type_name* FUNC1 (int /*<<< orphan*/ ,struct tl_type*) ; 

struct tl_type *FUNC2 (int name) {
  FUNC0 (cur_config);
  struct tl_type t;
  t.name = name;
  //struct hash_elem_tl_type_name *h = hash_lookup_tl_type_name (&tl_type_name_hash_table, &t);
  struct hash_elem_tl_type_name *h = FUNC1 (cur_config->ht_tname, &t);
  return h ? h->x : 0;
}