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
struct lev_query_tx {int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; int /*<<< orphan*/  timeout; int /*<<< orphan*/  cluster_id; int /*<<< orphan*/  pid; int /*<<< orphan*/  old_qid; int /*<<< orphan*/  qid; } ;
struct lev_query_forget {int /*<<< orphan*/  qid; } ;
struct lev_generic {int type; } ;
struct lev_answer_tx {int /*<<< orphan*/  answer_len; int /*<<< orphan*/  answer; int /*<<< orphan*/  op; int /*<<< orphan*/  pid; int /*<<< orphan*/  qid; } ;
struct lev_answer_rx {int /*<<< orphan*/  qid; } ;
struct lev_answer_forget {int /*<<< orphan*/  pid; int /*<<< orphan*/  qid; } ;

/* Variables and functions */
#define  LEV_ANSWER_FORGET 140 
#define  LEV_ANSWER_RX 139 
#define  LEV_ANSWER_TX 138 
#define  LEV_CBINLOG_END 137 
#define  LEV_CRC32 136 
#define  LEV_NOOP 135 
#define  LEV_QUERY_FORGET 134 
#define  LEV_QUERY_TX 133 
#define  LEV_ROTATE_FROM 132 
#define  LEV_ROTATE_TO 131 
#define  LEV_START 130 
#define  LEV_TAG 129 
#define  LEV_TIMESTAMP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct lev_generic*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8 (struct lev_generic *E, int size) {
  switch (E->type) {
  case LEV_START:
    return (size < 24 ? -2 : 24);
  case LEV_NOOP:
  case LEV_TIMESTAMP:
  case LEV_CRC32:
  case LEV_ROTATE_TO:
  case LEV_ROTATE_FROM:
  case LEV_TAG:
  case LEV_CBINLOG_END:
    return FUNC3 (E, size);
  case LEV_QUERY_FORGET:
    {
      struct lev_query_forget *L = (void *)E;
      if (size < sizeof (*L)) { return -2; }
      FUNC6 (L->qid);
      return sizeof (*L);
    }
  case LEV_ANSWER_FORGET:
    {
      struct lev_answer_forget *L = (void *)E;
      if (size < sizeof (*L)) { return -2; }
      FUNC0 (L->qid, &L->pid);
      return sizeof (*L);
    }

  case LEV_QUERY_TX:
    {
      struct lev_query_tx *L = (void *)E;
      if (size < sizeof (*L)) { return -2; }
      if (size < sizeof (*L) + L->data_size) { return -2; }
      FUNC7 (L->qid, L->old_qid, &L->pid, L->cluster_id, L->timeout, L->data_size, L->data);
      return sizeof (*L) + L->data_size;
    }    
  case LEV_ANSWER_TX:
    {
      struct lev_answer_tx *L = (void *)E;
      if (size < sizeof (*L)) { return -2; }
      if (size < sizeof (*L) + L->answer_len) { return -2; }
      FUNC2 (L->qid, &L->pid, L->op, L->answer_len, L->answer);
      return sizeof (*L) + L->answer_len;
    }
  case LEV_ANSWER_RX:
    {
      struct lev_answer_rx *L = (void *)E;
      if (size < sizeof (*L)) { return -2; }
      FUNC1 (L->qid);
      return sizeof (*L);
    }
  default:
    FUNC4 (stderr, "unknown log event type %08x at position %d\n", E->type, FUNC5());
    return -1;
  }
}