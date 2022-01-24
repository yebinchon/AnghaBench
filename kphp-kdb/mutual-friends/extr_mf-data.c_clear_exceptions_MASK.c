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
struct TYPE_10__ {int /*<<< orphan*/  new_exceptions; scalar_t__ metafile_len; int /*<<< orphan*/ * metafile; } ;
typedef  TYPE_2__ user ;
struct lev_mf_clear_exceptions {int /*<<< orphan*/  user_id; } ;
struct TYPE_11__ {int user_cnt; TYPE_1__* user_index; } ;
struct TYPE_9__ {scalar_t__ size; } ;

/* Variables and functions */
 scalar_t__ NOAIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  binlog_readed ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_5__ header ; 
 scalar_t__ index_mode ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

int FUNC9 (struct lev_mf_clear_exceptions *E) {
  user *u = FUNC3 (E->user_id);
  int local_id = FUNC6 (E->user_id);

  if (u == NULL) {
    return 0;
  }

  FUNC5 (u, local_id, NOAIO || index_mode || !binlog_readed);

  if (!FUNC8 (u)) {
    return -2;
  }

  FUNC4 (u);
  FUNC0 (u);

  if (u->metafile != NULL) {
    FUNC1 (1 <= local_id && local_id <= header.user_cnt);

    FUNC7 (u->metafile, u->metafile_len);
    u->metafile = NULL;
    u->metafile_len = 0;
    header.user_index[local_id].size = 0;
  }
  FUNC2 (&u->new_exceptions);
  return 1;
}