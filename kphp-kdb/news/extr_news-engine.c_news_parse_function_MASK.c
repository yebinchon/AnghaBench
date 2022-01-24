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
struct tl_act_extra {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMM_MODE ; 
 int /*<<< orphan*/  NOTIFY_MODE ; 
 int /*<<< orphan*/  RECOMMEND_MODE ; 
#define  TL_CNEWS_ADD_BOOKMARK 152 
#define  TL_CNEWS_DELETE_UPDATE 151 
#define  TL_CNEWS_DELETE_UPDATES 150 
#define  TL_CNEWS_DEL_BOOKMARK 149 
#define  TL_CNEWS_GET_RAW_UPDATES 148 
#define  TL_CNEWS_GET_RAW_USER_UPDATES 147 
#define  TL_CNEWS_UNDELETE_UPDATE 146 
#define  TL_CNEWS_UPDATE 145 
 int /*<<< orphan*/  TL_ERROR_UNKNOWN_FUNCTION_ID ; 
 int /*<<< orphan*/  TL_ERROR_WRONG_ACTOR_ID ; 
#define  TL_NEWS_DELETE_UPDATES 144 
#define  TL_NEWS_GET_PRIVACY_MASK 143 
#define  TL_NEWS_GET_RAW_UPDATES 142 
#define  TL_NEWS_SET_PRIVACY_MASK 141 
#define  TL_NEWS_UPDATE 140 
#define  TL_NNEWS_DELETE_UPDATE 139 
#define  TL_NNEWS_DELETE_UPDATES 138 
#define  TL_NNEWS_DELETE_USER_UPDATE 137 
#define  TL_NNEWS_GET_GROUPED_UPDATES 136 
#define  TL_NNEWS_GET_UPDATES 135 
#define  TL_NNEWS_UNDELETE_UPDATE 134 
#define  TL_NNEWS_UNDELETE_USER_UPDATE 133 
#define  TL_NNEWS_UPDATE 132 
#define  TL_RNEWS_GET_RATE 131 
#define  TL_RNEWS_GET_RAW_UPDATES 130 
#define  TL_RNEWS_SET_RATE 129 
#define  TL_RNEWS_UPDATE 128 
 int /*<<< orphan*/  UG_MODE ; 
 struct tl_act_extra* FUNC0 () ; 
 struct tl_act_extra* FUNC1 () ; 
 struct tl_act_extra* FUNC2 () ; 
 struct tl_act_extra* FUNC3 () ; 
 struct tl_act_extra* FUNC4 () ; 
 struct tl_act_extra* FUNC5 () ; 
 struct tl_act_extra* FUNC6 () ; 
 struct tl_act_extra* FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 struct tl_act_extra* FUNC12 () ; 
 struct tl_act_extra* FUNC13 (int) ; 
 struct tl_act_extra* FUNC14 () ; 
 struct tl_act_extra* FUNC15 () ; 
 struct tl_act_extra* FUNC16 () ; 
 struct tl_act_extra* FUNC17 () ; 
 struct tl_act_extra* FUNC18 () ; 
 struct tl_act_extra* FUNC19 () ; 
 struct tl_act_extra* FUNC20 () ; 
 struct tl_act_extra* FUNC21 () ; 
 struct tl_act_extra* FUNC22 () ; 
 struct tl_act_extra* FUNC23 () ; 
 struct tl_act_extra* FUNC24 () ; 
 struct tl_act_extra* FUNC25 () ; 
 struct tl_act_extra* FUNC26 () ; 
 struct tl_act_extra* FUNC27 () ; 
 struct tl_act_extra* FUNC28 () ; 
 struct tl_act_extra* FUNC29 () ; 

struct tl_act_extra *FUNC30 (long long actor_id) {
  if (actor_id != 0) {
    FUNC10 ("News only support actor_id = 0", TL_ERROR_WRONG_ACTOR_ID);
    return 0;
  }
  int op = FUNC9 ();
  if (FUNC8 ()) {
    return 0;
  }
  switch (op) {
  case TL_NEWS_UPDATE:
    if (!UG_MODE) {
      return FUNC13 (op);
    }
    return FUNC17 ();
  case TL_NEWS_DELETE_UPDATES:
    if (!UG_MODE) {
      return FUNC13 (op);
    }
    return FUNC12 ();
  case TL_NEWS_SET_PRIVACY_MASK:
    if (!UG_MODE) {
      return FUNC13 (op);
    }
    return FUNC16 ();
  case TL_NEWS_GET_PRIVACY_MASK:
    if (!UG_MODE) {
      return FUNC13 (op);
    }
    return FUNC14 ();
  case TL_NEWS_GET_RAW_UPDATES:
    if (!UG_MODE) {
      return FUNC13 (op);
    }
    return FUNC15 ();
  case TL_NNEWS_UPDATE:
    if (!NOTIFY_MODE) {
      return FUNC13 (op);
    }
    return FUNC25 ();
  case TL_NNEWS_DELETE_UPDATES:
    if (!NOTIFY_MODE) {
      return FUNC13 (op);
    }
    return FUNC19 ();
  case TL_NNEWS_DELETE_UPDATE:
    if (!NOTIFY_MODE) {
      return FUNC13 (op);
    }
    return FUNC18 ();
  case TL_NNEWS_UNDELETE_UPDATE:
    if (!NOTIFY_MODE) {
      return FUNC13 (op);
    }
    return FUNC23 ();
  case TL_NNEWS_DELETE_USER_UPDATE:
    if (!NOTIFY_MODE) {
      return FUNC13 (op);
    }
    return FUNC20 ();
  case TL_NNEWS_UNDELETE_USER_UPDATE:
    if (!NOTIFY_MODE) {
      return FUNC13 (op);
    }
    return FUNC24 ();
  case TL_NNEWS_GET_UPDATES:
    if (!NOTIFY_MODE) {
      return FUNC13 (op);
    }
    return FUNC22 ();
  case TL_NNEWS_GET_GROUPED_UPDATES:
    if (!NOTIFY_MODE) {
      return FUNC13 (op);
    }
    return FUNC21 ();
  case TL_CNEWS_UPDATE:
    if (!COMM_MODE) {
      return FUNC13 (op);
    }
    return FUNC7 ();
  case TL_CNEWS_DELETE_UPDATES:
    if (!COMM_MODE) {
      return FUNC13 (op);
    }
    return FUNC3 ();
  case TL_CNEWS_DELETE_UPDATE:
    if (!COMM_MODE) {
      return FUNC13 (op);
    }
    return FUNC2 ();
  case TL_CNEWS_UNDELETE_UPDATE:
    if (!COMM_MODE) {
      return FUNC13 (op);
    }
    return FUNC6 ();
  case TL_CNEWS_GET_RAW_UPDATES:
    if (!COMM_MODE) {
      return FUNC13 (op);
    }
    return FUNC4 ();
  case TL_CNEWS_GET_RAW_USER_UPDATES:
    if (!COMM_MODE) {
      return FUNC13 (op);
    }
    return FUNC5 ();
  case TL_CNEWS_ADD_BOOKMARK:
    if (!COMM_MODE) {
      return FUNC13 (op);
    }
    return FUNC0 ();
  case TL_CNEWS_DEL_BOOKMARK:
    if (!COMM_MODE) {
      return FUNC13 (op);
    }
    return FUNC1 ();
  case TL_RNEWS_UPDATE:
    if (!RECOMMEND_MODE) {
      return FUNC13 (op);
    }
    return FUNC29 ();
  case TL_RNEWS_SET_RATE:
    if (!RECOMMEND_MODE) {
      return FUNC13 (op);
    }
    return FUNC28 ();
  case TL_RNEWS_GET_RATE:
    if (!RECOMMEND_MODE) {
      return FUNC13 (op);
    }
    return FUNC26 ();
  case TL_RNEWS_GET_RAW_UPDATES:
    if (!RECOMMEND_MODE) {
      return FUNC13 (op);
    }
    return FUNC27 ();
  default:
    FUNC11 (TL_ERROR_UNKNOWN_FUNCTION_ID, "Unknown op 0x%08x", op);
    return 0;
  }
}