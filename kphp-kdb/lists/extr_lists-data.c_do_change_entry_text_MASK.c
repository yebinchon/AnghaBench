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
struct lev_set_entry_text_long {int len; int /*<<< orphan*/  text; } ;
struct lev_set_entry_text {int len; int /*<<< orphan*/  text; } ;
struct lev_generic {int dummy; } ;
typedef  int /*<<< orphan*/  object_id_t ;
typedef  int /*<<< orphan*/  list_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct lev_set_entry_text_long*) ; 
 scalar_t__ LEV_LI_SET_ENTRY_TEXT ; 
 scalar_t__ LEV_LI_SET_ENTRY_TEXT_LONG ; 
 struct lev_set_entry_text_long* FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ lev_list_object_bytes ; 
 unsigned int max_text_len ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ metafile_mode ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,struct lev_generic*) ; 
 int /*<<< orphan*/  FUNC7 (struct lev_set_entry_text_long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8 (list_id_t list_id, object_id_t object_id, const char *text, int len) {
  if (FUNC3 (list_id) < 0 || (unsigned) len >= max_text_len) {
    return -1;
  }
  if (metafile_mode && FUNC5 (list_id, 1) < 0) {
    return -2;
  }
  if (len < 256) {
    struct lev_set_entry_text *E = FUNC2 (LEV_LI_SET_ENTRY_TEXT + len, sizeof (struct lev_set_entry_text) + len + lev_list_object_bytes, FUNC0(list_id));
    FUNC7 (E, list_id, object_id);
    FUNC4 (((struct lev_set_entry_text *) FUNC1 (E))->text, text, len);
    return FUNC6 (list_id, object_id, text, len, (struct lev_generic *)E);
  } else {
    struct lev_set_entry_text_long *E = FUNC2 (LEV_LI_SET_ENTRY_TEXT_LONG, sizeof (struct lev_set_entry_text_long) + len + lev_list_object_bytes, FUNC0(list_id));
    FUNC7 (E, list_id, object_id);
    E->len = len;
    FUNC4 (((struct lev_set_entry_text *) FUNC1 (E))->text, text, len);
    return FUNC6 (list_id, object_id, text, len, (struct lev_generic *)E);
  }
}