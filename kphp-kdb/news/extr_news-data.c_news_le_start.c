
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_start {int schema_id; scalar_t__ split_min; scalar_t__ split_max; scalar_t__ split_mod; } ;


 scalar_t__ COMMENT_TYPES_MASK ;
 scalar_t__ GROUP_TYPES_MASK ;





 scalar_t__ NOTIFY_TYPES_MASK ;
 scalar_t__ RECOMMEND_TYPES_MASK ;
 scalar_t__ USER_TYPES_MASK ;
 scalar_t__ allowed_types_mask ;
 int assert (int) ;
 scalar_t__ log_split_max ;
 scalar_t__ log_split_min ;
 scalar_t__ log_split_mod ;
 scalar_t__ news_get_allowed_types_mask (int) ;
 int ug_mode ;

__attribute__((used)) static int news_le_start (struct lev_start *E) {
  switch (E->schema_id) {
  case 128:
    ug_mode = 0;
    allowed_types_mask = USER_TYPES_MASK;
    break;
  case 131:
    ug_mode = -1;
    allowed_types_mask = GROUP_TYPES_MASK;
    break;
  case 132:
    ug_mode = 1;
    allowed_types_mask = COMMENT_TYPES_MASK;
    break;
  case 130:
    ug_mode = 2;
    allowed_types_mask = NOTIFY_TYPES_MASK;
    break;
  case 129:
    ug_mode = 3;
    allowed_types_mask = RECOMMEND_TYPES_MASK;
    break;
  default:
    return -1;
  }
  assert (allowed_types_mask == news_get_allowed_types_mask (ug_mode));
  log_split_min = E->split_min;
  log_split_max = E->split_max;
  log_split_mod = E->split_mod;
  assert (log_split_mod > 0 && log_split_min >= 0 && log_split_min + 1 == log_split_max && log_split_max <= log_split_mod);

  return 0;
}
