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
 int /*<<< orphan*/  TL_ERROR_UNKNOWN_FUNCTION_ID ; 
 int /*<<< orphan*/  TL_ERROR_WRONG_ACTOR_ID ; 
#define  TL_LISTS_ADD_ENTRY 181 
#define  TL_LISTS_CHANGE_FLAGS 180 
#define  TL_LISTS_CHANGE_LIST_FLAGS 179 
#define  TL_LISTS_CHANGE_LIST_FLAGS_EX 178 
#define  TL_LISTS_DATEDISTR 177 
#define  TL_LISTS_DECR_FLAGS 176 
#define  TL_LISTS_DECR_VALUE 175 
#define  TL_LISTS_DECR_VALUE_OR_CREATE 174 
#define  TL_LISTS_DELETE_ENTRY 173 
#define  TL_LISTS_DELETE_LIST 172 
#define  TL_LISTS_DELETE_OBJECT 171 
#define  TL_LISTS_DELETE_SUBLIST 170 
#define  TL_LISTS_DELETE_SUBLIST_EX 169 
#define  TL_LISTS_GET_ENTRY 168 
#define  TL_LISTS_GET_ENTRY_DATE 167 
#define  TL_LISTS_GET_ENTRY_FLAGS 166 
#define  TL_LISTS_GET_ENTRY_GLOBAL_ID 165 
#define  TL_LISTS_GET_ENTRY_POS 164 
#define  TL_LISTS_GET_ENTRY_TEXT 163 
#define  TL_LISTS_GET_ENTRY_VALUE 162 
#define  TL_LISTS_GET_LIST 161 
#define  TL_LISTS_GET_LIST_COUNT 160 
#define  TL_LISTS_GET_LIST_FULL 159 
#define  TL_LISTS_GET_LIST_FULL_LIMIT 158 
#define  TL_LISTS_GET_LIST_LIMIT 157 
#define  TL_LISTS_GET_SUBLISTS_COUNT 156 
#define  TL_LISTS_GET_SUBLIST_COUNT 155 
#define  TL_LISTS_INCR_FLAGS 154 
#define  TL_LISTS_INCR_VALUE 153 
#define  TL_LISTS_INCR_VALUE_OR_CREATE 152 
#define  TL_LISTS_INTERSECT 151 
#define  TL_LISTS_INTERSECT_FULL 150 
#define  TL_LISTS_INTERSECT_FULL_LIMIT 149 
#define  TL_LISTS_INTERSECT_LIMIT 148 
#define  TL_LISTS_INTERSECT_WILD 147 
#define  TL_LISTS_INTERSECT_WILD_FULL 146 
#define  TL_LISTS_INTERSECT_WILD_FULL_LIMIT 145 
#define  TL_LISTS_INTERSECT_WILD_LIMIT 144 
#define  TL_LISTS_REPLACE_ENTRY 143 
#define  TL_LISTS_SET_ENTRY 142 
#define  TL_LISTS_SET_ENTRY_TEXT 141 
#define  TL_LISTS_SET_FLAGS 140 
#define  TL_LISTS_SET_LIST_FLAGS 139 
#define  TL_LISTS_SET_VALUE 138 
#define  TL_LISTS_SORTED_LIST 137 
#define  TL_LISTS_SORTED_LIST_FULL 136 
#define  TL_LISTS_SORTED_LIST_FULL_LIMIT 135 
#define  TL_LISTS_SORTED_LIST_LIMIT 134 
#define  TL_LISTS_SUBTRACT 133 
#define  TL_LISTS_SUBTRACT_LIMIT 132 
#define  TL_LISTS_SUMLIST 131 
#define  TL_LISTS_SUMLIST_WEIGHTED 130 
#define  TL_LISTS_SUMLIST_WEIGHTED_WILD 129 
#define  TL_LISTS_SUMLIST_WILD 128 
 struct tl_act_extra* FUNC0 () ; 
 int /*<<< orphan*/  tl_do_list_entry_get ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct tl_act_extra* FUNC5 (int) ; 
 struct tl_act_extra* FUNC6 () ; 
 struct tl_act_extra* FUNC7 () ; 
 struct tl_act_extra* FUNC8 (int /*<<< orphan*/ ) ; 
 struct tl_act_extra* FUNC9 (int,int) ; 
 struct tl_act_extra* FUNC10 () ; 
 struct tl_act_extra* FUNC11 () ; 
 struct tl_act_extra* FUNC12 (int) ; 
 struct tl_act_extra* FUNC13 (int) ; 
 struct tl_act_extra* FUNC14 (int) ; 
 struct tl_act_extra* FUNC15 () ; 
 struct tl_act_extra* FUNC16 (int) ; 
 struct tl_act_extra* FUNC17 (int,int) ; 
 struct tl_act_extra* FUNC18 (int,int,int,int) ; 
 struct tl_act_extra* FUNC19 (int) ; 
 struct tl_act_extra* FUNC20 (int,int) ; 
 struct tl_act_extra* FUNC21 (int,int) ; 
 struct tl_act_extra* FUNC22 () ; 
 struct tl_act_extra* FUNC23 (int) ; 

struct tl_act_extra *FUNC24 (long long actor_id) {
  if (actor_id != 0) {
    FUNC3 ("Lists only support actor_id = 0", TL_ERROR_WRONG_ACTOR_ID);
    return 0;
  }
  int op = FUNC2 ();
  if (FUNC1 ()) {
    return 0;
  }
  switch (op) {
  case TL_LISTS_DELETE_LIST:
    return FUNC6 ();
  case TL_LISTS_DELETE_ENTRY:
    return FUNC7 ();
  case TL_LISTS_DELETE_OBJECT:
    return FUNC22 ();
  case TL_LISTS_SET_ENTRY:
    return FUNC13 (0);
  case TL_LISTS_ADD_ENTRY:
    return FUNC13 (2);
  case TL_LISTS_REPLACE_ENTRY:
    return FUNC13 (1);
  case TL_LISTS_SET_ENTRY_TEXT:
    return FUNC15 ();
  case TL_LISTS_SET_FLAGS:
    return FUNC14 (0);
  case TL_LISTS_CHANGE_FLAGS:
    return FUNC14 (1);
  case TL_LISTS_INCR_FLAGS:
    return FUNC14 (2);
  case TL_LISTS_DECR_FLAGS:
    return FUNC14 (3);
  case TL_LISTS_SET_VALUE:
    return FUNC16 (0);
  case TL_LISTS_INCR_VALUE:
    return FUNC16 (1);
  case TL_LISTS_DECR_VALUE:
    return FUNC16 (2);
  case TL_LISTS_INCR_VALUE_OR_CREATE:
    return FUNC12 (0);
  case TL_LISTS_DECR_VALUE_OR_CREATE:
    return FUNC12 (1);
  case TL_LISTS_SET_LIST_FLAGS:
    return FUNC19 (0);
  case TL_LISTS_CHANGE_LIST_FLAGS:
    return FUNC19 (1);
  case TL_LISTS_CHANGE_LIST_FLAGS_EX:
    return FUNC19 (2);
  case TL_LISTS_DELETE_SUBLIST:
    return FUNC23 (0);
  case TL_LISTS_DELETE_SUBLIST_EX:
    return FUNC23 (1);
  case TL_LISTS_GET_ENTRY:
    return FUNC8 (tl_do_list_entry_get);
  case TL_LISTS_GET_ENTRY_FLAGS:
    return FUNC9 (0, 0);
  case TL_LISTS_GET_ENTRY_DATE:
    return FUNC9 (0, 1);
  case TL_LISTS_GET_ENTRY_GLOBAL_ID:
    return FUNC9 (1, 2);
  case TL_LISTS_GET_ENTRY_VALUE:
    return FUNC9 (1, 4);
  case TL_LISTS_GET_ENTRY_TEXT:
    return FUNC11 ();
  case TL_LISTS_GET_ENTRY_POS:
    return FUNC10 ();
  case TL_LISTS_GET_LIST:
    return FUNC17 (0, 0);
  case TL_LISTS_GET_LIST_LIMIT:
    return FUNC17 (0, 1);
  case TL_LISTS_GET_LIST_FULL:
    return FUNC17 (1, 0);
  case TL_LISTS_GET_LIST_FULL_LIMIT:
    return FUNC17 (1, 1);
  case TL_LISTS_GET_LIST_COUNT:
    return FUNC5 (0);
  case TL_LISTS_GET_SUBLIST_COUNT:
    return FUNC5 (1);
  case TL_LISTS_GET_SUBLISTS_COUNT:
    return FUNC5 (2);
  case TL_LISTS_INTERSECT:
    return FUNC18 (1, 0, 0, 0);
  case TL_LISTS_INTERSECT_LIMIT:
    return FUNC18 (1, 0, 1, 0);
  case TL_LISTS_INTERSECT_FULL:
    return FUNC18 (1, 0, 0, 1);
  case TL_LISTS_INTERSECT_FULL_LIMIT:
    return FUNC18 (1, 0, 1, 1);
  case TL_LISTS_INTERSECT_WILD:
    return FUNC18 (1, 1, 0, 0);
  case TL_LISTS_INTERSECT_WILD_LIMIT:
    return FUNC18 (1, 1, 1, 0);
  case TL_LISTS_INTERSECT_WILD_FULL:
    return FUNC18 (1, 1, 0, 1);
  case TL_LISTS_INTERSECT_WILD_FULL_LIMIT:
    return FUNC18 (1, 1, 1, 1);
  case TL_LISTS_SUBTRACT:
    return FUNC18 (0, 0, 0, 0);
  case TL_LISTS_SUBTRACT_LIMIT:
    return FUNC18 (0, 0, 1, 0);
  case TL_LISTS_SUMLIST:
    return FUNC21 (0, 0);
  case TL_LISTS_SUMLIST_WILD:
    return FUNC21 (1, 0);
  case TL_LISTS_SUMLIST_WEIGHTED:
    return FUNC21 (0, 1);
  case TL_LISTS_SUMLIST_WEIGHTED_WILD:
    return FUNC21 (1, 1);
  case TL_LISTS_SORTED_LIST:
    return FUNC20 (0, 0);
  case TL_LISTS_SORTED_LIST_LIMIT:
    return FUNC20 (0, 1);
  case TL_LISTS_SORTED_LIST_FULL:
    return FUNC20 (1, 0);
  case TL_LISTS_SORTED_LIST_FULL_LIMIT:
    return FUNC20 (1, 1);
  case TL_LISTS_DATEDISTR:
    return FUNC0 ();
  default:
    FUNC4 (TL_ERROR_UNKNOWN_FUNCTION_ID, "Unknown op %08x", op);
    return 0;
  }
}