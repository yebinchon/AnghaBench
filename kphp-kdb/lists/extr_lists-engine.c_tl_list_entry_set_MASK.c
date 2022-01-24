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
struct tl_list_entry_set {int mode; int value; int text_len; int op; void* ua_hash; void* port; void* front_ip; void* ip; int /*<<< orphan*/  text; void* flags; int /*<<< orphan*/  object_id; int /*<<< orphan*/  list_id; } ;
struct tl_act_extra {int size; scalar_t__ extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_LIST_OBJECT_INTS ; 
 int /*<<< orphan*/  TL_ERROR_BAD_VALUE ; 
 int TL_LIST_FLAG_DATE ; 
 int TL_LIST_FLAG_FLAGS ; 
 int TL_LIST_FLAG_FRONT_IP ; 
 int TL_LIST_FLAG_GLOBAL_ID ; 
 int TL_LIST_FLAG_IP ; 
 int TL_LIST_FLAG_OBJECT_ID ; 
 int TL_LIST_FLAG_PORT ; 
 int TL_LIST_FLAG_TEXT ; 
 int TL_LIST_FLAG_UA_HASH ; 
 int TL_LIST_FLAG_VALUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ max_text_len ; 
 int /*<<< orphan*/  stats_buff ; 
 struct tl_act_extra* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tl_do_list_entry_set ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 void* FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

struct tl_act_extra *FUNC9 (int op) {
  struct tl_act_extra *extra = FUNC2 (stats_buff, sizeof (struct tl_list_entry_set), tl_do_list_entry_set);
  struct tl_list_entry_set *e = (void *)extra->extra;
  CHECK_LIST_OBJECT_INTS;
  if (FUNC0 (&e->list_id) < 0) {
    return 0;
  }
  e->mode = FUNC5 ();
  if (FUNC4 ()) {
    return 0;
  }
  if (!(e->mode & TL_LIST_FLAG_OBJECT_ID)) {
    FUNC7 (TL_ERROR_BAD_VALUE, "entry must contain object id (mode = 0x%08x)", e->mode);
    return 0;
  }
  if (e->mode & (TL_LIST_FLAG_DATE | TL_LIST_FLAG_GLOBAL_ID)) {
    FUNC7 (TL_ERROR_BAD_VALUE, "entry can not contain date and global_id (mode = 0x%08x)", e->mode);
    return 0;
  }
/*  if (e->mode & (TL_LIST_FLAG_TEXT)) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "text in set_entry is unsupported. Sorry. (mode = 0x%08x)", e->mode);
    return 0;
  }*/
  if (FUNC1 (&e->object_id) < 0) {
    return 0;
  }
  e->flags = (e->mode & TL_LIST_FLAG_FLAGS) ? FUNC5 () : 0;
  e->value = (e->mode & TL_LIST_FLAG_VALUE) ? FUNC6 () : 0;
#ifdef VALUES64
  if (e->value != (int)e->value && (e->mode & (TL_LIST_FLAG_IP | TL_LIST_FLAG_FRONT_IP | TL_LIST_FLAG_PORT | TL_LIST_FLAG_UA_HASH))) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "can not set 64-bit value with ip/front_ip/port/ua_hash. (mode = 0x%08x, value = %lld)", e->mode, e->value);
    return 0;
  }
#else
  if (e->value != (int)e->value) {
    FUNC7 (TL_ERROR_BAD_VALUE, "64-bit value can not be used in this version of lists (value = %lld)", e->value);
    return 0;
  }
#endif
  e->text_len = (e->mode & TL_LIST_FLAG_TEXT) ? FUNC8 (e->text, max_text_len - 1) : -1;
  extra->size += e->text_len + 1;
  e->ip = (e->mode & TL_LIST_FLAG_IP) ? FUNC5 () : 0;
  e->front_ip = (e->mode & TL_LIST_FLAG_FRONT_IP) ? FUNC5 () : 0;
  e->port = (e->mode & TL_LIST_FLAG_PORT) ? FUNC5 () : 0;
  e->ua_hash = (e->mode & TL_LIST_FLAG_UA_HASH) ? FUNC5 () : 0;
  e->op = op;
  FUNC3 ();
  if (FUNC4 ()) {
    return 0;
  }
  return extra;
}