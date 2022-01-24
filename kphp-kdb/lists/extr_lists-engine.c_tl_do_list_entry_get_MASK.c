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
 int* R ; 
 int TL_MAYBE_FALSE ; 
 int TL_MAYBE_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6 (struct tl_act_extra *extra) {
  struct tl_list_entry_get *e = (void *)(extra->extra);
  int res = FUNC1 (e->list_id, e->object_id, R);
  if (res == -2) { return -2; }
  if (res < 0) {    
    FUNC2 (TL_MAYBE_FALSE);
    return 0;
  }
  FUNC0 (res == 6);
  int text_len = R[12];

  FUNC2 (TL_MAYBE_TRUE);
  //tl_store_int (text_len > 0 ? 31 << 6 : 15 << 6);

  if (e->mode & (1 << 15)) {
    FUNC4 (e->object_id);
  }
  if (e->mode & (1 << 6)) {
    FUNC2 (R[0]);
  }
  if (e->mode & (1 << 7)) {
    FUNC2 (R[1]);
  }
  if (e->mode & (1 << 8)) { 
    FUNC3 (*(long long *)(R + 2));
  }
  if (e->mode & (1 << 9)) {
    FUNC3 (*(long long *)(R + 4));
  }
  if (e->mode & (1 << 10)) {
    char **text = (char **)(R + 10);
    FUNC5 (text ? *text : 0, text_len);
  }
  return 0;
}