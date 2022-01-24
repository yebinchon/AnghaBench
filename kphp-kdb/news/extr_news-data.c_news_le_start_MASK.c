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
struct lev_start {int schema_id; scalar_t__ split_min; scalar_t__ split_max; scalar_t__ split_mod; } ;

/* Variables and functions */
 scalar_t__ COMMENT_TYPES_MASK ; 
 scalar_t__ GROUP_TYPES_MASK ; 
#define  NEWS_SCHEMA_COMMENT_V1 132 
#define  NEWS_SCHEMA_GROUP_V1 131 
#define  NEWS_SCHEMA_NOTIFY_V1 130 
#define  NEWS_SCHEMA_RECOMMEND_V1 129 
#define  NEWS_SCHEMA_USER_V1 128 
 scalar_t__ NOTIFY_TYPES_MASK ; 
 scalar_t__ RECOMMEND_TYPES_MASK ; 
 scalar_t__ USER_TYPES_MASK ; 
 scalar_t__ allowed_types_mask ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ log_split_max ; 
 scalar_t__ log_split_min ; 
 scalar_t__ log_split_mod ; 
 scalar_t__ FUNC1 (int) ; 
 int ug_mode ; 

__attribute__((used)) static int FUNC2 (struct lev_start *E) {
  switch (E->schema_id) {
  case NEWS_SCHEMA_USER_V1:
    ug_mode = 0;
    allowed_types_mask = USER_TYPES_MASK;
    break;
  case NEWS_SCHEMA_GROUP_V1:
    ug_mode = -1;
    allowed_types_mask = GROUP_TYPES_MASK;
    break;
  case NEWS_SCHEMA_COMMENT_V1:
    ug_mode = 1;
    allowed_types_mask = COMMENT_TYPES_MASK;
    break;
  case NEWS_SCHEMA_NOTIFY_V1:
    ug_mode = 2;
    allowed_types_mask = NOTIFY_TYPES_MASK;
    break;
  case NEWS_SCHEMA_RECOMMEND_V1:
    ug_mode = 3;
    allowed_types_mask = RECOMMEND_TYPES_MASK;
    break;
  default:
    return -1;
  }
  FUNC0 (allowed_types_mask == FUNC1 (ug_mode));
  log_split_min = E->split_min;
  log_split_max = E->split_max;
  log_split_mod = E->split_mod;
  FUNC0 (log_split_mod > 0 && log_split_min >= 0 && log_split_min + 1 == log_split_max && log_split_max <= log_split_mod);

  return 0;
}