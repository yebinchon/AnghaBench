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
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct hash_table_tl_fun_id {int dummy; } ;
struct TYPE_11__ {size_t pos; TYPE_4__* ht_fname; TYPE_3__* ht_tname; TYPE_2__* ht_fid; TYPE_1__* ht_tid; } ;
struct TYPE_10__ {int size; int mask; void* E; } ;
struct TYPE_9__ {int size; int mask; void* E; } ;
struct TYPE_8__ {int size; int mask; void* E; } ;
struct TYPE_7__ {int size; int mask; void* E; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t CONFIG_LIST_SIZE ; 
 TYPE_5__** config_list ; 
 size_t config_list_pos ; 
 TYPE_5__* cur_config ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 

void FUNC3 (void) {
  cur_config = FUNC2 (sizeof (*cur_config));
  FUNC0 (sizeof (*cur_config));
  config_list_pos ++;
  if (config_list_pos >= CONFIG_LIST_SIZE) {
    config_list_pos -= CONFIG_LIST_SIZE;
  }
  config_list[config_list_pos] = cur_config;
  int size = sizeof (struct hash_table_tl_fun_id);
  cur_config->ht_tid = FUNC1 (size);
  cur_config->ht_tid->size = (1 << 12);
  cur_config->ht_tid->mask = (1 << 12) - 1;
  cur_config->ht_tid->E = FUNC2 (sizeof (void *) * (1 << 12));
  cur_config->ht_fid = FUNC1 (size);
  cur_config->ht_fid->size = (1 << 12);
  cur_config->ht_fid->mask = (1 << 12) - 1;
  cur_config->ht_fid->E = FUNC2 (sizeof (void *) * (1 << 12));
  cur_config->ht_tname = FUNC1 (size);
  cur_config->ht_tname->size = (1 << 12);
  cur_config->ht_tname->mask = (1 << 12) - 1;
  cur_config->ht_tname->E = FUNC2 (sizeof (void *) * (1 << 12));
  cur_config->ht_fname = FUNC1 (size);
  cur_config->ht_fname->size = (1 << 12);
  cur_config->ht_fname->mask = (1 << 12) - 1;
  cur_config->ht_fname->E = FUNC2 (sizeof (void *) * (1 << 12));
  cur_config->pos = config_list_pos;

  FUNC0 (size * 4);
  FUNC0 (sizeof (void *) * (1 << 12) * 4);
}