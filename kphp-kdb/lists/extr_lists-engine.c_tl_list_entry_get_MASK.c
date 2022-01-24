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
struct tl_list_entry_get {int mode; int /*<<< orphan*/  object_id; int /*<<< orphan*/  list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_LIST_OBJECT_INTS ; 
 int /*<<< orphan*/  TL_ERROR_BAD_VALUE ; 
 int TL_LIST_FLAG_FRONT_IP ; 
 int TL_LIST_FLAG_IP ; 
 int TL_LIST_FLAG_PORT ; 
 int TL_LIST_FLAG_UA_HASH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stats_buff ; 
 struct tl_act_extra* FUNC2 (int /*<<< orphan*/ ,int,int (*) (struct tl_act_extra*)) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

struct tl_act_extra *FUNC7 (int (*act)(struct tl_act_extra *)) {
  struct tl_act_extra *extra = FUNC2 (stats_buff, sizeof (struct tl_list_entry_get), act);
  struct tl_list_entry_get *e = (void *)extra->extra;
  CHECK_LIST_OBJECT_INTS;
  if (FUNC0 (&e->list_id) < 0) {
    return 0;
  }
  if (FUNC1 (&e->object_id) < 0) {
    return 0;
  }
  e->mode = FUNC5 ();
  FUNC3 ();
  if (FUNC4 ()) {
    return 0;
  }
  if (e->mode & 63) {
    FUNC6 (TL_ERROR_BAD_VALUE, "In get object flags 0..5 not supported");
    return 0;
  }
  if (e->mode & (TL_LIST_FLAG_IP | TL_LIST_FLAG_FRONT_IP | TL_LIST_FLAG_PORT | TL_LIST_FLAG_UA_HASH)) {
    FUNC6 (TL_ERROR_BAD_VALUE, "Get ip/front_ip/port/ua_hash not supported (yet?). (mode = 0x%08x)", e->mode);
    return 0;
  }
  return extra;
}